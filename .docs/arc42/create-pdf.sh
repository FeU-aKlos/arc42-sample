#!/usr/bin/env bash
chmod +x ./scripts/prepare.sh
./scripts/prepare.sh

echo "==========================="
echo "  generating PDF"
echo "==========================="

docker run --rm -v "${PWD}:/documents/" asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-pdf -b pdf -a data-uri src/arc42/arc42.adoc -o output/arc42.pdf

chmod +x ./scripts/cleanup.sh
./scripts/cleanup.sh
