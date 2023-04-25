# SNI Router with TLS passthrough

This is an example for SNI routing with TLS passthrough. Even though examples use web services like google and amazon, it is on TCP-level.

Steps to run:
- Start NGINX with `docker compose up`
- Run the `curl`-based tests with `./run_test.sh`
