TAG = $(shell echo `grep "TAG=" ./hub.config.env | sed 's/.*=//'`)
VERSION = $(shell echo `grep "VERSION=" ./hub.config.env | sed 's/.*=//'`)

build:
	docker build -t ws-node-alpine .


tag-it:
	docker tag $(TAG) willsonic/ws-node-alpine:$(VERSION)


hub-push:
	docker push willsonic/ws-node-alpine
