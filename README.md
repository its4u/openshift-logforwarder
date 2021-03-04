# Log Forwarder

Create a forwarder pod in `openshift-logging` namespace, to forward log between OpenShift Cluster Fluentd (log collector) and an external log storage (currently **splunk**).\
A single pod is used to produce a single point for log input and output.

___
## Configuration

#### File to look at:
- **1-ClusterLogging.yml**: Put the ressources limit and request
- **2a-ConfigMap-SplunkURL**: Put splunk URL and Port
- **2b-Secret-SplunkTOKEN**: Put splunk access token

Look in subdirectories README for additionnal files to configure.
Audit log disable by default. Look in `configMap-pipeline` to change filter.

___
## How to use

#### Prerequisites:
- Cluster Logging Operator installed.
- No Cluster Logging or Cluster Log Forwarder instance running.
- Image listed in others README available to the cluster.

#### Installation:
- Use `oc apply -f <file>` with every `.yml` files in order, or use `install.sh`

#### Uninstall:
- Delete every resources created by `.yml` files (listed in `ResourceList` files), or use `uninstall.sh`