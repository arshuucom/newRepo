#!/bin/bash

# Set the JBoss home directory
export JBOSS_HOME=/root/JBOSS/jboss-eap-8.0

#/path/to/jboss/home
# Set the name of the WAR file you want to deploy
WAR_FILE=Project.war

# Set the deployment directory
DEPLOY_DIR=$JBOSS_HOME/standalone/deployments

# Copy the WAR file to the deployment directory
cp $WAR_FILE $DEPLOY_DIR

# Wait for the deployment to complete
sleep 5

# Run in background
nohup ./standalone.sh > /dev/null 2>&1 &

# Check the server log to make sure the deployment was successful
# tail -f $JBOSS_HOME/standalone/log/server.log

#Port
#8790