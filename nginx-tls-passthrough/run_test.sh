#!/usr/bin/env bash

hosts=( "fritz.is.here" "buy.it" "google.it" "git.hub" )

for i in "${hosts[@]}"; do
    echo Testing $i ...
    docker exec nginx-sni curl -v -s -k https://$i
    echo
done
