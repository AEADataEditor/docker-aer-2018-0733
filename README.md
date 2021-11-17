# Docker image basic R image

## Purpose

Used for reproducibility check of [AER-2018-0733](https://doi.org/10.1257/aer.20180733):

> Brunnermeier, Markus, Darius Palia, Karthik A. Sastry, and Christopher A. Sims. 2021. "Feedbacks: Financial Markets and Economic Activity." American Economic Review, 111 (6): 1845-79. DOI: [10.1257/aer.20180733](https://doi.org/10.1257/aer.20180733)

## Build

### Adjust the needed packages

See the [setup.R](setup.R) file, and update accordingly.


### Setup info

Set the `TAG` and `IMAGEID` accordingly.

```
TAG=20201025
MYIMG=aer-2018-0733
MYHUBID=aeadataeditor
```
### Build the image

```
DOCKER_BUILDKIT=1 docker build . -t $MYHUBID/$MYIMG:$TAG
```

## Publish the image

The resulting docker image can be found at [https://hub.docker.com/r/aeadataeditor/aer-2018-0733/tags](https://hub.docker.com/r/aeadataeditor/aer-2018-0733/tags).

## Using the image

- Downloaded replication code (now published at [https://doi.org/10.3886/E121521V1](https://doi.org/10.3886/E121521V1))
- Created [main.R](main.R) to run the figure/table creation code.
- Ran `time docker run -it --rm -v $(pwd):/code -w /code $MYHUBID/$MYIMG:$TAG Rscript --vanilla main.R > main.Rlog`
- Created [redo.R](redo.R) to hold the two "additional" scripts
- Ran `time docker run -it --rm -v $(pwd):/code -w /code $MYHUBID/$MYIMG:$TAG Rscript --vanilla redo.R > redo.Rlog` 

## Note

This repo was not created at the time, but was subsequently reconstructed from internal (private) git repositories.