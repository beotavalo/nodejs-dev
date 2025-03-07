.PHONY: build run push

build:
	docker build -t node-app .

run:
	docker run -p 8000:8000 node-app

push:
	docker tag node-app botavalo/node-app:latest
	docker push botavalo/node-app:latest

pull:
	docker pull botavalo/node-app:latest

all: build run