#!/bin/bash

# Apply specific configuration
for f in $(ls fluentd/*.yml | sort); do
  oc apply -f $f;
done;

# Apply general configuration (Splunk)
for f in $(ls *.yml | sort); do
  oc apply -f $f;
done;
