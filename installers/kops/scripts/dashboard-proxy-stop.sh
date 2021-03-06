#!/bin/bash

PID=$(ps fx | grep "kubectl proxy --namespace kubernetes-dashboard" | grep -v grep | awk '{print $1}')

if [ -z "$PID" ]; then
  echo "Dashboard proxy not running."
else
  kill -9 $PID
  echo "Dashboard proxy stopped."
fi
