#!/bin/bash
set -ex

timeCounter=0
timeLimit=30
while [[ $(curl http://app:3000/version --write-out 200 --silent --output healthcheck.result) -ne 200 && $timeCounter -ne $timeLimit ]]; do
  echo "wait for app health check"
  let timeCounter+=1
  sleep 1
done

if [ $timeCounter -eq $timeLimit ]
then
  exit 1
fi

cucumber.js --tags ~@ignore

# Bad practice to hang on container
# while true; do sleep 1000; done
