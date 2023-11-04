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
helm repo add bugfest https://bugfest.github.io/tor-controller

helm repo update

helm upgrade \
  --install \
  --create-namespace \
  --namespace tor-controller-system \
  --values values.yaml \
  tor-controller \
  bugfest/tor-controller
```
