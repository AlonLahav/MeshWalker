#!/usr/bin/env bash

DATADIR='pretrained' #location where data gets downloaded to

echo "downloading the data and putting it in: " $DATADIR
mkdir -p $DATADIR && cd $DATADIR
wget https://cgm.technion.ac.il/Computer-Graphics-Multimedia/Software/MeshWalker/mesh_walker_data/runs_pretrained/coseg_chairs.tar.gz
tar -xzvf coseg_chairs.tar.gz && rm coseg_chairs.tar.gz

