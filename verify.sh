#!/usr/bin/env bash

cosign verify ghcr.io/priyawadhwa/nginx \
    --certificate-identity "https://github.com/priyawadhwa/kcd-zurich-demo/.github/workflows/build-and-sign.yaml@refs/heads/main" \
    --certificate-oidc-issuer "https://token.actions.githubusercontent.com"

cosign verify-attestation ghcr.io/priyawadhwa/nginx-cves \
    --certificate-identity "https://github.com/priyawadhwa/kcd-zurich-demo/.github/workflows/cves.yaml@refs/heads/main" \
    --certificate-oidc-issuer "https://token.actions.githubusercontent.com" \
    --type vuln