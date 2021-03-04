# Logstash Forwarder

Create a Logstash pod, to forward log between OpenShift Cluster Fluentd and an external log storage.
A single pod is used to produce a single point for log input and output, but 3 containers are used.

Thoses three containers of logstash are running in the same pod, each one for one log categories:
- Application
- Infrastructure
- Audit

___
## Configuration

#### File to look at:
- **1b-configMap-pipeline.yml**: Put personnal filters
- **1c-configMap-ruby.yml**: Put personnal ruby script
- **4-clusterLogForwarder-logstash.yml**: Put log level for each log cateories, in spec.outputs.syslog.severity

___
## File content

#### 1x-configMap-:
- **config**: Contain logstash path to pipelines files.
- **pipeline**: Contain input, output and filters.
- **ruby**: Contain every ruby scripts

#### 2-deployment:
Contain logstash deployment configuration.

#### 3-service:
Contain service used to access logstash inside the cluster

#### 4-clusterLogForwarder-logstash:
Contain configuration for ClusterLogging instance to send log to Logstash
Contain also log severity
