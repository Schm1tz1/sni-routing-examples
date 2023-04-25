# Docker and Kubernetes Examples for SNI-Routing

*A typical use case*: You are using a single proxy/ingress service and need to access different services with different DNS / host names so you need some kind of router to do the job.

In HTTP traffic this is done using the header ingormation but for TCP traffic there is a different possibility if using TCP over TLS called SNI routing. Here traffic is routed to backend servers / endpoints using the *server_name* in the SNI extension in TLS.

![SNI Routing](./assets/SNI-Routing.svg)

## Working Examples
- **nginx-tls-passthrough** - NGINX OSS example with docker compose

## WIP
- **nginx-tls-termination** - NGINX OSS example with docker compose

- **haproxy-tls-passthrough** - HAProxy example with docker compose

## TODO
- **Caddy** - 
