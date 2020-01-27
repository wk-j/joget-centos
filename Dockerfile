FROM centos
MAINTAINER Marco Palladino, marco@mashape.com


RUN yum update
RUN yum install java-1.8.0-openjdk-devel -y

COPY joget/joget-linux-6.0.25 /joget

WORKDIR /joget

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.232.b09-2.el8_1.x86_64
ENV WFLOW_HOME=/joget/wflow
ENV JAVA_OPTS="-XX:MaxPermSize=128m -Xmx512M -Dwflow.home=/joget/wflow/ -javaagent:/joget/wflow/aspectjweaver-1.8.5.jar"

ENTRYPOINT [ "/bin/bash", "/joget/apache-tomcat-8.5.41/bin/catalina.sh", "run" ]