FROM ubuntu:20.04



ADD files/plugin /


ENTRYPOINT ["/entrypoint.sh"] 