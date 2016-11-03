#!/usr/bin/env bash
cd dask-benchmarks
git fetch origin

for project in dask distributed
do
    cd $project
    asv run NEW
done
git add -A
git commit -m "New runs"
git push origin gh-pages