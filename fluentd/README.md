# Fluentd Forwarder

Create an additionnal fluentd pod, to forward log between Cluster Logging instance using `fluentdforward` protocol.

Image used: `registry.redhat.io/openshift4/ose-logging-fluentd@sha256:63ad916c1dafad2b81cc00ddf976d543534d0acd6ef8c3ba41e4ef94578db794`
(Should be present when installing `Cluster Logging` Operator)

___
## Configuration

#### File to look at:
- **1-configMap-pipeline.yml**: Put personnal filters and log level

___
## File content

#### 1-configMap-pipeline:
Contain FluentdForwarder pipelines configurations.

#### 2-deployment:
Contain FluentdForwarder deployment configuration.

#### 3-service:
Contain service used to access FluentdForwarder inside the cluster

#### 4-clusterLogForwarder-fluentd:
Contain configuration for ClusterLogging instance to send log to FluentdForwarder
