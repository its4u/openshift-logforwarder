#!/bin/bash

# Apply logstash configuration
for f in $(ls logstash/*.yml | sort); do
  oc apply -f $f;
done;

# Apply general configuration (Splunk)
for f in $(ls *.yml | sort); do
  oc apply -f $f;
done;
