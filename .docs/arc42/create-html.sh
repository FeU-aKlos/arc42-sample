#!/usr/bin/env bash

./scripts/prepare.sh

echo "==========================="
echo "  generating HTML"
echo "==========================="
docker run -it -v "${PWD}":"/documents/" asciidoctor/docker-asciidoctor asciidoctor -a data-uri src/arc42/arc42.adoc -o output/arc42.html

./scripts/cleanup.sh