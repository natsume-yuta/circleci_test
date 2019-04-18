SHELL = /usr/bin/env bash -xeuo pipefail

build:
	docker image build --tag build_test .; \
	docker container run -it --name installer build_test; \
	docker cp installer:/workdir python; \
	docker rm installer;

sleep-10:
	sleep 10
	echo "sleep 10"

sleep-15:
	sleep 15
	echo "sleep 15"