# Fluentd Forwarder

Create an additionnal fluentd pod, to forward log between Cluster Logging instance using `fluentdforward` protocol.

Image used: `registry.redhat.io/openshift4/ose-logging-fluentd`
Please specify sha key of image.
(Should be present when installing `Cluster Logging` Operator)

Audit log restricted to non system user.
Infrastructure log restricted to Error and Fatal level. (may be Unknown)

___
## Configuration

#### File to look at:
- **1a-configMap-pipeline.yml**: Put personnal filters and log level

___
## File content

#### 1x-configMap-:
- **pipeline**: Contain FluentdForwarder pipelines configurations.
- **runsh**: Contain script to start fluentd.

#### 2-deployment:
Contain FluentdForwarder deployment configuration.

#### 3-service:
Contain service used to access FluentdForwarder inside the cluster

#### 4-clusterLogForwarder-fluentd:
Contain configuration for ClusterLogging instance to send log to FluentdForwarder
