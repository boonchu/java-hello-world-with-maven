# java-hello-world-with-maven
Hello World sample with Java with Maven

## Compile

```
$ mvn compile
```

## Test

```
$ mvn clean test
```

## Run

```
$ mvn exec:java
```

## Package

```
$ mvn package
```

## Creating this project by Maven

```
$ mvn archetype:generate \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false \
  -DgroupId=info.maigo.lab.hello \
  -DartifactId=maigolab_hello
```

## Follow this best practice 'git-flow'

* https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac

## Follow Security Remediation after SonarQube Scan raising issue.

* https://www.baeldung.com/java-system-out-println-vs-loggers
* https://github.com/eugenp/tutorials/tree/master/logging-modules/log4j2

