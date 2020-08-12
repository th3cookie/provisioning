#!/bin/bash
# Script to backup docker data

source /etc/environment

cd ${USERDIR}/docker

for i in *
do
    if [[ "${i}" == "backups" ]] || [[ ! -d "${i}" ]]; then
        continue
    fi
    tar -czf ${USERDIR}/mount/docker_backups/${i}.tar.gz $i
done