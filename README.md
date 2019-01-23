# Wildfire Smoke Detection using Mask R-CNN

<p float="left">
<img src=docs/wildfire-smoke-mask-detect.png />
</p>

We use the Matterport Mask R-CNN repo as the base for this implementation of wildfire smoke detector and reuse/adapt the provided sample code to train our model. Special thanks to this great [Mask R-CNN library by Matterport](https://github.com/matterport/Mask_RCNN). Please be sure to check it out for more information.

## Dataset
We use the wildfire smoke image dataset curated by [Center for Wildfire Research of University of Split, Croatia](http://wildfire.fesb.hr/) as our training/validation data.
You can find them in the [samples/wildfire2/datasets/wildfire](samples/wildfire2/datasets/wildfire) folder.

Install Docker:

https://docs.docker.com/v17.12/docker-for-mac/install/#install-and-run-docker-for-mac

Clone the repository (https://github.com/aiformankind/wildfire-smoke-mask-rcnn.git):
```
git clone https://github.com/aiformankind/wildfire-smoke-mask-rcnn.git
```

Go to the repository directory that you just clone:
```
cd wildfire-smoke-mask-rcnn
```

Build the docker (this job will set up the environment) :
```
docker build -t aiformankind/wildfire-mrcnn:0.0.1 .
```

Start the docker container :
```
docker run -it -p 8888:8888 -p 6006:6006  aiformankind/wildfire-mrcnn:0.0.1
```

## Training
Train model starting from COCO weights
```
cd samples/wildfire2/
python3 wildfire_train.py train --dataset=datasets/wildfire --weights=coco
```

Resume training of model
```
cd samples/wildfire2/
python3 wildfire_train.py train --dataset=datasets/wildfire --weights=last
```

## Results
Run the [samples/wildfire2/inspect_wildfire_smoke_model.ipynb](samples/wildfire2/inspect_wildfire_smoke_model.ipynb) notebook to view the model's results.

<p float="left">
<img src=docs/wildfire-smoke-mask-detect-2.png />
</p>

