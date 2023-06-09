
export IMAGE=[signed nginx image with digest]

# Show how we can validate signatures
kubectl run --image=$IMAGE nginx-signed
kubectl run --image=nginx nginx-unsigned

# Show how we can make sure there are no CVEs