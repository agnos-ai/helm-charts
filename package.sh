#!/usr/bin/env bash

VERSION=$1

echo Will package as $VERSION

cd ..

helm dependency update helm-charts/charts/stardog

helm package helm-charts/charts/stardog --version $VERSION

cd helm-charts

git worktree add gh-pages origin/gh-pages

cp ../stardog-$VERSION.tgz .

helm repo index helm-charts --url http://agnos-ai.github.io/helm-charts/

git add .

git commit

git push

cd ..

git worktree remove gh-pages