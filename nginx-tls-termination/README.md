# SNI Router with TLS termination

This is an example for SNI routing with TLS termination so you will need to create certificates anmd keys. To do so, we will use my small [Docker Certificates Repo](https://github.com/Schm1tz1/certificates-docker) and create a CA and a certificate/key for each service.
Note: Even though examples use web services like google and amazon, it is on TCP-level.

Preparation:
- Create certificates with `./create-certs.sh`
- A directory `certs` is now visible and will be mounted in your NGINX container

Steps to run the test:
- Start NGINX with `docker compose up`
- Run the `curl`-based tests with `./run_test.sh`
