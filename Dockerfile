FROM ubuntu:20.04

ADD files/ /


ENTRYPOINT /plugin/entrypoint.sh