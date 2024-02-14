#!/usr/bin/env bash

./scripts/prepare.sh

echo "==========================="
echo "  generating HTML"
echo "==========================="
docker run --rm -v "${PWD}":"/documents/" asciidoctor/docker-asciidoctor asciidoctor -a data-uri src/arc42/arc42.adoc -o output/index.html

./scripts/cleanup.sh
