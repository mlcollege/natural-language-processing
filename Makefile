NAME=mlcollege/natural-language-processing

all: pull build run

run:
	docker run -ti --rm -p 9998:8888 -v $(shell pwd)/src:/src  $(NAME)

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

pull:
	docker pull $(NAME)
