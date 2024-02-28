#!/bin/bash
bash init.sh
bash scripts/prepare.sh
curl -Lo dtcw doctoolchain.github.io/dtcw
bash dtcw local install java
bash dtcw install doctoolchain
