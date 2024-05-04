#!bin/bash

action={1}

case ${action} in
    start)
    echo "going to start project"
    ;;
    stop)
    echo "going to stop project" 
    ;;
    reload)
    echo "going to reload project"
    ;;
    restart)
    echo "going to restart project"
    ;;
    *)
     echo "plaese enter correct command"
esac     


