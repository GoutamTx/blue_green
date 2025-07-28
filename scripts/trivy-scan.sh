#!/bin/bash
IMAGE=$1
echo "[INFO] Running Trivy scan on $IMAGE ..."
trivy image --exit-code 1 --severity HIGH,CRITICAL $IMAGE

