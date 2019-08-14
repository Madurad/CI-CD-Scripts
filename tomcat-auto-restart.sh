#!/bin/bash

TOMCAT_HOME=/opt/apache-tomcat-8.0.26/

tomcat_pid() {
    echo `ps aux | grep org.apache.catalina.startup.Bootstrap | grep -v grep | awk '{ print $2 }'`
}

pid=$(tomcat_pid)
    if [ -n "$pid" ]
    then
        echo "Tomcat is already running (pid: $pid)"
    else
        # Start tomcat
        echo "Starting tomcat"
        cd $TOMCAT_HOME/bin
        ./startup.sh
    fi