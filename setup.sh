#!/bin/zsh
set -e -o pipefail

for i in $(ls -d */); do
    if [ -e ${i}/setup.sh ]; then
        . ${i}/setup.sh
    fi
done
