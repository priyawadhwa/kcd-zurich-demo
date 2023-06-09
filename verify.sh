#!/usr/bin/env bash

cosign verify ghcr.io/priyawadhwa/nginx \
    --certificate-identity "https://github.com/priyawadhwa/kcd-zurich-demo/.github/workflows/build-and-sign.yaml@refs/heads/main" \
    --certificate-oidc-issuer "https://token.actions.githubusercontent.com"
