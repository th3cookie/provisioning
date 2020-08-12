#!/usr/bin/env python3.8
# This script will parse the docker compose and create the relevant directory structure.

import yaml
import os

vols_to_create = []
docker_file = 'docker-compose.yml'

def listVols(array):
    for volume in volumes:
        newvol = volume.replace("${USERDIR}", userdir).split(':')[0] if ':' in volume else volume.replace("${USERDIR}", userdir)
        vols_to_create.append(newvol)

# This will only grab your userdir if it's set as standard, i.e. /home/user
cwdarr = os.getcwd().split("/")
userdir = f"/{'/'.join(cwdarr[1:3])}"

with open(docker_file) as f:
    data = yaml.load(f, Loader=yaml.FullLoader)

for service in data['services']:
    try:
        volumes = data['services'][service]['volumes']
        listVols(volumes)
    except KeyError:
        pass

for vol in vols_to_create:
    if not os.path.exists(vol):
        try:
            os.mkdir(vol)
            print(f"Volume '{vol}' created successfully...")
        except OSError:
            print(f"Creation of the directory '{vol}' FAILED... Please check to see why it has failed, and remediate manually.")
