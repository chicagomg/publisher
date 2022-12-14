FROM ghcr.io/chicagomg/docker-root-image:1.0

RUN apt update; \
	apt install -y docker.io && rm -rf /var/lib/apt/lists/*


ADD files /


ENTRYPOINT "/plugin/entrypoint.sh" 