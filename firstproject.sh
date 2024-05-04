#!/bin/bash
#########
# this script will setup this project
# run ./setup.sh to run this project
#########

# check is user a root user
# apt-get update
# agp-get install maven
# mvm test
# mvm package
# apt-get install tomcat9
# cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/app.war


function installPackage() {
   local packageName=${1}
    
    if ! apt-get install -y ${packageName}
    then
      echo "not able to install ${packageName}"
      exit 1
    fi

}

function mavenTarget(){
    local mavenCmd=${1}
    
    if ! mvn ${mavenCmd}
    then
      echo "${mavenCmd} fail"
      exit 1
fi
}

if [[ $UID != 0]]
then
    echo "user is not a root user"
    exit 1
fi


if ! apt-get update 
then
    echo "not able to update the repository"
    exit 1
fi

installPackage maven
installPackage tomcat9
mavenTarget test
mavenTarget package



if ! cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/app.war
then
    echo "application deployed successfully"
else 
    echo "not able to deploy the application"
    exit 1
fi

exit 0
