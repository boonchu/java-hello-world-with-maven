all: compile build deploy exec

compile:
	@mvn clean test && mvn package && mvn dependency:tree

artifact:
	@curl -o target/maigolab_hello-1.0.2.jar -u deploy:deploy123 http://172.30.30.102:8081/repository/springboot/info/maigo/lab/hello/maigolab_hello/1.0.2/maigolab_hello-1.0.2.jar  -v

build:
	@docker build -t boonchu/maigolab_hello .

deploy:
	@docker tag boonchu/maigolab_hello:latest boonchu/maigolab_hello:dev
	@docker push boonchu/maigolab_hello:dev

exec:
	@docker rm --force local_demo 2>&1 >/dev/null
	@docker run --name=local_demo -p 8085:8080 --net docker-jenkins_jenkins -e SPRING_PROFILES_ACTIVE=demo boonchu/maigolab_hello:dev "Hello World!"

log:
	@docker logs local_demo

.PHONY: compile test build deploy exec log artifact
