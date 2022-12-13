FROM ghcr.io/chicagomg/docker-root-image:1.0


ADD files /


ENTRYPOINT "/plugin/entrypoint.sh" 