SHELL = /usr/bin/env bash -xeuo pipefail

build:
	docker image build --tag build_test .; \
	docker container run -it --name installer build_test; \
	docker cp installer:/workdir python; \
	docker rm installer;