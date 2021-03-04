#!/bin/bash

if [ ! $# -eq 1 ]; then
  echo "Please select one configuration directory (fluentd or logstash)."
  exit 1;
fi;

if [[ ! -d "$1" ]]; then
  echo "Please select a valid directory."
  exit 1;
fi;


for r in $(cat $1/ResourceList); do
  oc delete $r -n openshift-logging;
done;

for r in $(cat ResourceList); do
  oc delete $r -n openshift-logging;
done;
