#!/bin/bash

for r in $(cat logstash/ResourceList); do
  oc delete $r -n openshift-logging;
done;

for r in $(cat ResourceList); do
  oc delete $r -n openshift-logging;
done;
