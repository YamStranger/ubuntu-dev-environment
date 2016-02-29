#!/bin/bash
#This script downloads and install scala for particular user, it will use folder dev/app as home, require sudo access

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi