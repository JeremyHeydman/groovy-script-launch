#!/bin/sh

##############################
# LAUNCH VARIABLES
##############################
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home
GROOVY_HOME=~/.gvm/groovy/current/
DATABASE_CONFIG=~/JavaDev/git/JeremyHeydman/groovy-script-launch/database.config

. $DATABASE_CONFIG

JAVA_OPTS="-XX:PermSize=64m -Xms256m -Xmx2048m -Xss1024k -XX:MaxPermSize=256m"
export JAVA_OPTS

$GROOVY_HOME/bin/groovy \
    -Ddb.jdbc.url=${DB_JDBC_URL} \
    -Ddb.username=${DB_USERNAME} \
    -Ddb.password=${DB_PASSWORD} \
    MyProgram.groovy
