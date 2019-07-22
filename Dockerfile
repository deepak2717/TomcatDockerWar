FROM tomcat:8.0

MAINTAINER deepak2717@gmail.com

COPY /var/lib/jenkins/workspace/pipelineProjectDocker/target/JenkinsWar.war /usr/local/tomcat/webapps/
