all: test build deploy

test:
	@mvn clean test && mvn package

build:
	@docker build -t boonchu/maigolab_hello .

deploy:
	@docker tag boonchu/maigolab_hello:latest localhost:5000/boonchu/maigolab_hello:latest
	@docker push localhost:5000/boonchu/maigolab_hello 

exec:
	@docker rm --force local_demo 2>&1 >/dev/null
	@docker run --name=local_demo -p 8085:8080 --net docker-jenkins_jenkins -e SPRING_PROFILES_ACTIVE=demo -d localhost:5000/boonchu/maigolab_hello:latest
	@docker logs local_demo

.PHONY: test build deploy exec
