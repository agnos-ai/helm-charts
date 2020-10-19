Stardog Helm Charts
===================

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![<ORG_NAME>](https://circleci.com/gh/stardog-union/helm-charts.svg?style=shield&circle-token=213cf9bca0acf5d3945dfd5d746b48f1c2d436e0)](https://app.circleci.com/pipelines/gh/stardog-union/helm-charts)

These charts install the Stardog Knowledge Graph platform on Kubernetes.

Stardog documentation: https://www.stardog.com/docs

Prerequisites
-------------

- Stardog Cluster license file
- Helm v3
- Persistent volume support
- Load balancer service
- Familiarity with Stardog Cluster
- Familiarity with Apache ZooKeeper

Installing
----------

```
$ kubectl -n <your-namespace> create secret generic stardog-license --from-file stardog-license-key.bin=/path/to/stardog-license-key.bin
$ helm repo add stardog https://stardog-union.github.io/helm-charts/
$ helm install <helm-release-name> --namespace <your-namespace> stardog/stardog
```

See the Stardog chart's [README](https://github.com/stardog-union/helm-charts/blob/master/charts/stardog/README.md)
for a list of configuration parameters.

Deleting
--------

```
$ helm delete <helm-release-name> --namespace <your-namespace>
```

## Packaging
Run the following commands from one level above the project root directory.

In master branch:
Make your changes, check them in and push
 
### Update dependencies
```
helm dependency update helm-charts/charts/stardog
```

### Package with the new version number
```
helm package helm-charts/charts/stardog --version 1.0.1
```

From the `gh-pages` branch:
### Copy artifact into repo
```
cp stardog-1.0.1.tgz helm-charts/.
```

### Update the index
```
helm repo index helm-charts --url http://agnos-ai.github.io/helm-charts/
```

Push the updated index.yaml and tgz files.