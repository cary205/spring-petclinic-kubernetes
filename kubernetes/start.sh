#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Applying..."
kubectl apply -f $DIR/customers-service.yaml
kubectl apply -f $DIR/vets-service.yaml
kubectl apply -f $DIR/visits-service.yaml
kubectl apply -f $DIR/api-gateway.yaml
kubectl apply -f $DIR/tracing-server.yaml
kubectl apply -f $DIR/hystrix-dashboard.yaml
kubectl apply -f $DIR/admin-server.yaml
kubectl apply -f $DIR/discovery-server.yaml
kubectl apply -f $DIR/config-server.yaml
kubectl apply -f $DIR/grafana-server.yaml
echo "done!!"