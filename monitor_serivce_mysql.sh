#!/bin/bash
serviceIsRunning=false
var1=$(/etc/init.d/mysql status | awk '{print $2}')
        if [ "$var1" == 'running' ]
                then
                        serviceIsRunning=true
                        echo "0:200:Running"
        fi
        if [ $serviceIsRunning == false ]
                then
                        echo "2:404:Stop"
                fi

