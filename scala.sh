#!/bin/bash
#This script downloads and install scala for particular user, it will use folder dev/app as home




if [ "$1" = "" ]
then
    export SCALA_VERSION=2.11.7
else
    export SCALA_VERSION=$1
fi


if ! grep -q "#scala" ~/.bashrc;
then
    mkdir -p ~/dev/apps/
    cd ~/dev/apps/
    rm -rf scala-$SCALA_VERSION/
    wget -q --show-progress  http://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz
    tar zxvf scala-$SCALA_VERSION.tgz
echo '
#scala all environment variables. https://github.com/YamStranger/ubuntu-dev-environment
export SCALA_HOME='$(pwd)'/scala-'$SCALA_VERSION'
export PATH=$SCALA_HOME/bin:$PATH' >>~/.bashrc
    rm scala-$SCALA_VERSION.tgz
    echo "to test installation please open new terminal and execute \"scala -version\""
else
    echo "according to (~/.bashrc) scala is already installed, please remove it"
fi


