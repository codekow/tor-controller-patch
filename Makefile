.PHONY: all
all: build

.PHONY: build
build:
	docker buildx build \
		--platform=linux/amd64 \
		--tag ghcr.io/codekow/tor:0.4.7.13 \
		--tag ghcr.io/codekow/tor:latest \
		-f Dockerfile.tor .

	docker buildx build \
		--platform=linux/amd64 \
		--tag ghcr.io/codekow/tor-daemon:0.9.0 \
		--tag ghcr.io/codekow/tor-daemon:latest \
		-f Dockerfile.tor-daemon .

	docker buildx build \
		--platform=linux/amd64 \
		--tag ghcr.io/codekow/tor-daemon-manager:0.9.0 \
		--tag ghcr.io/codekow/tor-daemon-manager:latest \
		-f Dockerfile.tor-daemon-manager .

	docker buildx build \
		--platform=linux/amd64 \
		--tag ghcr.io/codekow/tor-onionbalance-manager:0.9.0 \
		--tag ghcr.io/codekow/tor-onionbalance-manager:latest \
		-f Dockerfile.tor-onionbalance-manager .

.PHONY: push
push:
	docker push ghcr.io/codekow/tor-daemon:0.9.0
	docker push ghcr.io/codekow/tor-daemon:latest
	docker push ghcr.io/codekow/tor-daemon-manager:0.9.0
	docker push ghcr.io/codekow/tor-daemon-manager:latest
	docker push ghcr.io/codekow/tor-onionbalance-manager:0.9.0
	docker push ghcr.io/codekow/tor-onionbalance-manager:latest
