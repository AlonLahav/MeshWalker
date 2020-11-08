# MeshWalker: Deep Mesh Understanding by Random Walks
<img src='/doc/images/teaser_fig.png'>

## SIGGRAPH ASIA 2020 [[Paper]](https://arxiv.org/abs/2006.05353)
Created by [Alon Lahav](mailto:alon.lahav2@gmail.com).

This repository is going to host [MeshWalker](https://arxiv.org/abs/2006.05353) official implementation.

## Installation
A step-by-step installation guide for Ubuntu is provided in [INSTALL.md](./INSTALL.md).

## Data
Note for this README: each time `<dataset>` is mentioned, 
it should be replaced by one of the following:

```
1. modelnet40
2. engraved_cubes
3. shrec11
4. coseg
5. human_seg
```

<img src='/doc/images/segmentaion_edges_human_body.gif'>

### Raw datasets
To get the raw datasets go to the relevant website, 
and put it under `MeshWalker/datasets_raw/<dataset>`. 
- [ModelNet](https://modelnet.cs.princeton.edu/)
  (Right click on `ModelNet40.zip`, to download the dataset) 
- [Shrec11](): -> to-add-later
- [Engraved Cubes](): -> to-add-later
- [Human-seg17](): -> to-add-later
- [COSEG](): -> to-add-later

You can also download it from our [raw_datasets](https://cgm.technion.ac.il/Computer-Graphics-Multimedia/Software/MeshWalker/mesh_walker_data/datasets_raw/) folder.


### Processed -> to-add-later
To prepare the data, run `python dataset_prepare.py <dataset>`

Or download the data after processing from 
[datasets_processed](https://cgm.technion.ac.il/Computer-Graphics-Multimedia/Software/MeshWalker/mesh_walker_data/datasets_processed/)
to `MeshWalker/datasets_processed/<dataset>`. 
Processing will rearrange dataset in `npz` files, labels included, vertex niebours added.

Use the following to download all:
```
bash ./get_datasets.sh
```
 
## Training -> to-add-later
```
python train_val.py <dataset>
```
You will find the results at: `MeshWalkerr\runs\???`

Use tensorboard to show training results: `tensorboard <trained-model-folder>`

Note that "accuracy" tab is a fast accuracy calculated while training, 
it is not the final accuracy we get using averaging.
To get the final accuracy results, please refer to the "full_accuracy" tab at tensorboard, 
or run evaluation scripts.

<img src='/doc/images/2nd_fig.png'>

## Evaluating -> to-add-later
After training is finished (or pretrained is downloaded), 
to evaluate the model run the following: 
`python evaluate.py <dataset> <trained-model-folder>`

## Pretrained   
You can use some [pretrained](https://technionmail-my.sharepoint.com/personal/alon_lahav_campus_technion_ac_il/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Falon%5Flahav%5Fcampus%5Ftechnion%5Fac%5Fil%2FDocuments%2Fmesh%5Fwalker%2Fpretrained)  models to run evaluation only.

Or download them using
```
bash ./get_pretrained.sh
``` 

## Reference
If you find our code or paper useful, please consider citing:
```
@article{lahav2020meshwalker,
  title={MeshWalker: Deep Mesh Understanding by Random Walks},
  author={Lahav, Alon and Tal, Ayellet},
  journal={arXiv preprint arXiv:2006.05353},
  year={2020}
}
```
