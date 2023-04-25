# Docker and Kubernetes Examples for SNI-Routing

**NOTE:** This repo is still WIP - please use with care!

*A typical use case*: You are using a single proxy/ingress service and need to access different backend services via different DNS / host names. You need two thigs to do the job:
- Some kind of router that will route the backend traffic
- A DNS entry that is pointing to the router

In HTTP traffic this is done using the header information. For TCP traffic there is a different possibility if using TCP over TLS called SNI routing. Here traffic is routed to backend servers / endpoints using the *server_name* in the SNI extension in TLS.

![SNI Routing](./assets/SNI-Routing.svg)

This is a collection of working examples with some common ingress / proxy services. For local testing, we are using host name overrides in docker (i.e. creating `/etc/hosts`entries) with `extra_hosts` instead of a DNS server. 

## Working Examples
- **nginx-tls-passthrough** - NGINX OSS example on docker compose
- **nginx-tls-termination** - NGINX OSS example on docker compose

## WIP
- **haproxy-tls-passthrough** - HAProxy example with docker compose

## TODO
- **Caddy**:
  - https://caddyserver.com/docs/modules/tls.handshake_match.sni 
  - https://caddy.community/t/how-can-i-use-proxy-ssl-name-for-sni-in-caddy-2/7739 
  - https://medium.com/@panda1100/how-to-setup-layer-4-reverse-proxy-to-multiplex-tls-traffic-with-sni-routing-a226c8168826 
  - https://caddyserver.com/docs/json/apps/http/servers/routes/match/host/ 
  - https://caddyserver.com/docs/caddyfile/concepts#addresses 
- **Traefik**: 
  - https://kupczynski.info/posts/traefik-sni/
  - https://traefik.io/blog/traefik-proxy-kubernetes-101/
