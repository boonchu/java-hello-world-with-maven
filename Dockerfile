FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
# RUN addgroup -S java && adduser -S java -G java
# USER java:java
COPY target/lib/*.jar /lib/
ARG JAVA_APP_JAR=target/maigolab_hello-1.0.3.jar
COPY ${JAVA_APP_JAR} /maigolab_hello.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/maigolab_hello.jar"]
