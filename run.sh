#!/usr/bin/env bash
git fetch origin

for project in dask distributed
do
    cd $project
    asv run NEW
done
git add -A
git commit -m "New runs"
git push origin gh-pages
