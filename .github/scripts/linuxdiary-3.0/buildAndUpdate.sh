#!/bin/bash

while read p; do
    IFS=' ' 
    read -a line <<<"$p"
    sha256sum ${line[0]} > ${line[1]}

    IFS='/'
    read -a strarr <<<"${line[0]}"

    NAME_ARR=("${strarr[@]:5:2}")

    NAME=$(IFS=_ ; echo "${NAME_ARR[*]}")

    eval "docker build . -t ghcr.io/walchand-linux-users-group/${NAME}:latest -f ${line[0]}"
    eval "docker push ghcr.io/walchand-linux-users-group/${NAME}:latest"
done < /home/runner/work/Container-Registry/Container-Registry/.github/updates/linuxdiary-3.0