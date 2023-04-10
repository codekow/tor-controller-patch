# tor-controller-patch

Patch the images for the tor-controller

## Fix permissions to run as non root

can run as non-root

```
quay.io/bugfest/tor-controller
```

patch the following images

```
quay.io/bugfest/tor
quay.io/bugfest/tor-daemon
quay.io/bugfest/tor-daemon-manager
quay.io/bugfest/tor-onionbalance-manager
```

Helm Values

```
daemon:
  image:
    repository: ghcr.io/codekow/tor-daemon
manager:
  image:
    repository: ghcr.io/codekow/tor-daemon-manager
onionbalance:
  image:
    repository: ghcr.io/codekow/tor-onionbalance-manager
```
