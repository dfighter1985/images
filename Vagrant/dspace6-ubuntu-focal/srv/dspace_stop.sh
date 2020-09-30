#!/bin/bash

TOMCAT_DIR=/srv/tomcat7

if [ $UID -ne 0 ]
then
    echo "This script must be run as root"
    exit 1
fi

echo "Stopping DSpace..."

sudo -u tomcat7 bash $TOMCAT_DIR/bin/shutdown.sh

exit 0
