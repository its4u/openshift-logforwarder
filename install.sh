#!/bin/bash

if [ ! $# -eq 1 ]; then
  echo "Please select one configuration directory (fluentd or logstash)."
  exit 1;
fi;

if [[ ! -d "$1" ]]; then
  echo "Please select a valid directory."
  exit 1;
fi;


# Apply general configuration (Splunk)
for f in $(ls *.yml | sort); do
  oc apply -f $f;
done;

# Apply specific configuration
for f in $(ls $1/*.yml | sort); do
  oc apply -f $f;
done;

