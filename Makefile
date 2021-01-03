all: test build deploy

test:
	@mvn clean test && mvn package

build:
	@docker build -t boonchu/maigolab_hello .

deploy:
	@docker tag boonchu/maigolab_hello:latest localhost:5000/boonchu/maigolab_hello:latest
	@docker push localhost:5000/boonchu/maigolab_hello 

.PHONY: build deploy
