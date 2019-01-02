FROM jenkins/jenkins:latest
LABEL maintainer="moadthr@gmail.com"

USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins
EXPOSE 8080

ENV JAVA_OPTS="-Xmx8192m"
ENV JENKINS_OPTS="--handlerCountMax=300"
