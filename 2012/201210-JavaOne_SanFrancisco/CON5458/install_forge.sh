#!/bin/bash

# Variables (Might need to change these to suit your needs)
JAVA_HOME=/opt/oracle/java/jdk7
PROJECTNAME=feedback
PWD=`pwd`

# Download and Install Forge
mkdir ~/opt
curl -L 'https://repository.jboss.org/nexus/service/local/artifact/maven/redirect?r=releases&g=org.jboss.forge&a=forge-distribution&v=1.1.0.Final&e=zip' > ~/opt/forge-distribution-1.1.0.Final.zip
unzip ~/opt/forge-distribution-1.1.0.Final.zip
mv forge-distribution-1.1.0.Final ~/opt/
rm -f ~/opt/forge-distribution-1.1.0.Final.zip
export FORGE_HOME=~/opt/forge-distribution-1.1.0.Final
PATH=$PATH:$FORGE_HOME/bin

# Run the script
forge -e 'run feedback.fsh'
