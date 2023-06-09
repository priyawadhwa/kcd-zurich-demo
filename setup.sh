#!/usr/bin/env bash

kind create cluster --name demo
curl -Lo /tmp/policy-controller.yaml https://github.com/sigstore/policy-controller/releases/download/v0.7.0/policy-controller-v0.7.0.yaml
kubectl apply -f /tmp/policy-controller.yaml
