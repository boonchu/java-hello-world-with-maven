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

## Log4j2

* https://logging.apache.org/log4j/2.x/manual/configuration.html
* https://github.com/eugenp/tutorials/tree/master/logging-modules/log4j2
* https://www.baeldung.com/java-system-out-println-vs-loggers

```
$ tree src/main/java/
src/main/java/
├── info
│   └── maigo
│       └── lab
│           └── hello
│               └── App.java
└── log4j.xml
```

## Jira integration

* https://github.com/integrations/jira
* https://support.atlassian.com/jira-software-cloud/docs/reference-issues-in-your-development-work/

```
git flow feature start DEV-1-fix-code
** working on your code **
git commit -am 'DEV-1 correct code smell issue'
git flow feature publish DEV-1-fix-code
** run feature branch in your pipeline to test both analytic and code coverage **
```
