Stardog Helm Chart
==================

Helm chart to deploy Stardog Cluster and associated services

## Helm Repo Setup
These [instructions](https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221) where used as a reference.

## Packaging
Run the following commands from one level above the project root directory.

In master branch:
### Update dependencies
```
helm dependency update helm-charts/charts/stardog
```

### Package with the new version number
```
helm package charts/stardog --app-version 1.0.1
```

From the `gh-pages` branch:
### Update the index
```
helm repo index helm-charts --url http://agnos-ai.github.io/helm-charts/
```
Check in