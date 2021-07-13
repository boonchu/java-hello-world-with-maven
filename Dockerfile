FROM openjdk:8-jdk-alpine
RUN addgroup -S java && adduser -S java -G java
USER java:java
ARG version
ENV JAVA_APP_JAR=maigolab_hello-1.0.2.jar
ADD target/$JAVA_APP_JAR /deployments
ENTRYPOINT ["java", "-jar", "/deployments/maigolab_hello-1.0.2.jar"]

