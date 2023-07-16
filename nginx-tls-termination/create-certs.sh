#!/usr/bin/env bash

cat << EOF > ./hosts.yaml
global:
  country: DE
  org: Schm1tz1
  locality: Home
certs:
  - fileName: ca-root
    CN: me.at.home
    CA: "true"
  - CN: fritz.is.here
    CA: "false"
    SANs:
      - name: nginx-sni
      - name: 127.0.0.1
  - CN: buy.it
    CA: "false"
    SANs:
      - name: nginx-sni
      - name: 127.0.0.1
  - CN: google.it
    CA: "false"
    SANs:
      - name: nginx-sni
      - name: 127.0.0.1
  - CN: git.hub
    CA: "false"
    SANs:
      - name: nginx-sni
      - name: 127.0.0.1
EOF

docker run --rm \
-e PASSWD=changeIt -e DAYS=389 -e DAYS_CA=3650 \
-v $(pwd)/hosts.yaml:/opt/certs/hosts.txt \
-v $(pwd)/certs:/opt/certs/current \
schmitzi/openssl-alpine-j11:1.0.0

rm ./hosts.yaml
