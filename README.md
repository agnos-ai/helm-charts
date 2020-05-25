Stardog Helm Chart
==================

Helm chart to deploy Stardog Cluster and associated services

## Helm Repo Setup
Setup GitHub Pages on `gh-pages` branch.
These [instructions](https://medium.com/containerum/how-to-make-and-share-your-own-helm-package-50ae40f6c221) were used as a reference.

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
helm package charts/stardog --app-version 1.0.1
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