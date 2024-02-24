FROM busybox:latest

COPY hello_world.sh hello_world.sh

ENTRYPOINT ["/bin/sh", "-c", "while true; do hello_world.sh; sleep 1; done"]

LABEL org.opencontainers.image.source https://github.com/feu-aklos/arc42-sample 
