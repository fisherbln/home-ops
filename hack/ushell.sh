#!/bin/sh
#kubectl apply -f ./ubuntu.yaml
kubectl apply -f ./tools.yaml
kubectl -n default exec -it ubuntu-shell -- bash
