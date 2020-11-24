VERSION=latest
NAME=cbitter78/python_flake8

default: build

build: 
	@echo Building Version ${VERSION}
	@docker build --rm -q -t ${NAME}:${VERSION} .

run: build
	@echoRunning ${NAME}:${VERSION}
	@docker run --rm -ti --volume ~/:/$(USER) ${NAME}:${VERSION} 