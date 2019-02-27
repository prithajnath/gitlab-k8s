#!/usr/bin/bash

# Create volumes first
echo "Creating Redis Persistent Volume"
kubectl apply -f PV/redis-volume.yml

echo "Creating Postgres Persistent Volume"
kubectl apply -f PV/postgres-volume.yml

echo "Creating GitLab Persistent Volume"
kubectl apply -f PV/gitlab-volume.yml

echo "Creating Redis Persistent Volume Claim"
kubectl apply -f PVC/redis-volume-claim.yml

echo "Creating Postgres Persistent Volume Claim"
kubectl apply -f PVC/postgres-volume-claim.yml

echo "Creating GitLab Persistent Volume Claim"
kubectl apply -f PVC/gitlab-volume-claim.yml
