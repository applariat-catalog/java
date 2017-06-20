#! /bin/sh
# appLariats generic tomcat build script
# Requirements - A valid jar file exists within the src_dir
# Copies the jar file from the src_dir and copies it into /usr/src/app/

#Log everything in /src/build.log
logfile=/src/build.log
exec > $logfile 2>&1
set -x

mkdir -p /usr/src/app

if ls /src/*.jar 1> /dev/null 2>&1
then
 cp -f /src/*.jar /usr/src/app/
else
 echo "ERROR! did not find any *.jar file"
 exit 1
fi
