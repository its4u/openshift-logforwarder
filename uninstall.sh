#!/bin/bash

for r in $(cat fluentd/ResourceList); do
  oc delete $r -n openshift-logging;
done;

for r in $(cat ResourceList); do
  oc delete $r -n openshift-logging;
done;
