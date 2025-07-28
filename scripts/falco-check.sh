#!/bin/bash
echo "[INFO] Waiting for Falco runtime logs (10 min watch)..."
sleep 600  # wait 10 mins
logs=$(kubectl logs -n falco -l app=falco --since=10m | grep -iE 'python|WARNING|shell')

if [[ ! -z "$logs" ]]; then
  echo "[ALERT] Falco detected suspicious activity!"
  echo "$logs"
  exit 1
fi

echo "[INFO] No suspicious activity detected."

