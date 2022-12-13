FROM ubuntu:20.04



ADD files/ /


ENTRYPOINT bash /plugin/entrypoint.sh