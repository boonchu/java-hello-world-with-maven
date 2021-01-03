FROM fabric8/java-alpine-openjdk8-jre:1.5.1

USER root

ARG version

ENV JAVA_APP_JAR=maigolab_hello-1.0.0.jar

ADD target/$JAVA_APP_JAR /deployments
