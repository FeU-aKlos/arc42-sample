FROM busybox:latest

ENTRYPOINT ["/bin/sh", "./backend/hello_world.sh"]
