all: test build deploy

test:
	@mvn clean test && mvn package

build:
	@docker build -t boonchu/maigolab_hello .

deploy:
	@docker tag boonchu/maigolab_hello:latest boonchu/maigolab_hello:dev
	@docker push boonchu/maigolab_hello:dev

exec:
	@docker rm --force local_demo 2>&1 >/dev/null
	@docker run --name=local_demo -p 8085:8080 --net docker-jenkins_jenkins -e SPRING_PROFILES_ACTIVE=demo -d boonchu/maigolab_hello:dev
	@docker logs local_demo

.PHONY: test build deploy exec
