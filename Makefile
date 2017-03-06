
build:
	docker build -t ws-node-alpine .


tag-it:
	docker tag $(TAG) willsonic/ws-node-alpine:$(VERSION)


hub-push:
	docker push willsonic/ws-node-alpine
