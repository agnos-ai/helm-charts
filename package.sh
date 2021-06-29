#!/usr/bin/env bash
set -e
set -x

VERSION=$1

echo Will package as $VERSION

cd ..

helm dependency update helm-charts/stardog

helm package helm-charts/stardog --version $VERSION

cd helm-charts

git worktree add gh-pages origin/gh-pages

cp ./stardog-$VERSION.tgz gh-pages

helm repo index gh-pages --url http://agnos-ai.github.io/helm-charts/

git add .

git commit

git push

cd ..

git worktree remove gh-pages
