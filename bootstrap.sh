#!/bin/bash

kubectl apply -f crd
kubectl create ns openebs
echo "applying disks"
kubectl apply -f bd
echo "applying the rest of CRDs"
kubectl apply -f cspc -f cv -f cva -f cvc -f cvr
