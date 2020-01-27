#!/bin/sh

export JAVA_OPTS="-Xmx4096M -Dwflow.home=./wflow/ -XX:+UseConcMarkSweepGC -javaagent:./wflow/aspectjweaver-1.8.5.jar -javaagent:/opt/joget/glowroot/glowroot.jar -Djava.awt.headless=true"

#For Java 9
#export JAVA_OPTS="-XX:MaxPermSize=128m -Xmx2048M -Dwflow.home=./wflow/ -javaagent:./wflow/aspectjweaver-1.8.5.jar --add-modules java.se.ee"

apache-tomcat-8.5.41/bin/catalina.sh $*
 

