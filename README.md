# PointNet
This repo is an implementation for PointNet (https://arxiv.org/abs/1612.00593), using PyTorch.

This is a modified implementation of the one described in this link: (https://github.com/fxia22/pointnet.pytorch)

# Data Downloading and Running

```
git clone https://github.com/fxia22/pointnet.pytorch
cd pointnet
pip install -e .
```

Downloading dataset and visualization tool
```
cd scripts
bash build.sh #build C++ code for visualization
bash download.sh #download dataset
```

Training 
```
cd utils
python train_classification.py --dataset <dataset path> --nepoch=<number epochs> --dataset_type <modelnet40 | shapenet>
python train_segmentation.py --dataset <dataset path> --nepoch=<number epochs> 
```

To visualise a point cloud:
```
cd utils
python show3d_balls.py
```

Use `--feature_transform` to use feature transform.

# Performance

## Classification performance

On [A subset of shapenet](http://web.stanford.edu/~ericyi/project_page/part_annotation/index.html)

|  | Overall Acc | 
| :---: | :---: | 
| Original implementation | N/A | 
| this implementation(w/o feature transform) | 92.7% |

## Segmentation performance

Segmentation on  [A subset of shapenet](http://web.stanford.edu/~ericyi/project_page/part_annotation/index.html).

mIOU for Chair = 0.602 (60.2%)

Note that this implementation trains each class separately, so classes with fewer data will have slightly lower performance than reference implementation.
