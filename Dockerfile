FROM ubuntu:20.04

SHELL ["/bin/bash", "-c"]

ADD files/ /


ENTRYPOINT /plugin/entrypoint.sh