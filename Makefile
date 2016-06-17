#create redis cluster with docker

IMAGE_NAME = xiabingxiejiang/redis-cluster

help:
	@echo "create redis cluster with docker"
	@echo "  build           build the docker image containing a redis node"

build:
	@echo "building docker image ..."
	docker build -t ${IMAGE_NAME} .

rebuild:
	@echo "rebuilding docker image ..."
	docker build --no-cache=true -t ${IMAGE_NAME} .

run:
	@echo "run docker image ..."
	docker run -i -t ${IMAGE_NAME}
