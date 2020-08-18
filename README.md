# Visualize-CJ
Auto deploy VCJ client and server
## Project Repos
https://gist.github.com/p208p2002/583d08068f997e5be2b3478cba963364
## Visualize-CJ-client
![Build](https://github.com/p208p2002/Visualize-CJ-client/workflows/Build/badge.svg?branch=master)
- [https://github.com/p208p2002/Visualize-CJ-client](https://github.com/p208p2002/Visualize-CJ-client)
## Visualize-CJ-server
- [https://github.com/p208p2002/Visualize-CJ-server](https://github.com/p208p2002/Visualize-CJ-server)

## Run with Docker
### ENV Require
- docker 19.03
- nvidia-docker
- cuda 10.2
### Clone Project
```sh
$ git clone https://github.com/p208p2002/Visualize-CJ-server.git
$ cd Visualize-CJ-server
```
### Build Image
```bash
$ docker build -t=vcj_server .
```
### Run Container
```sh
$ export CUDA_VISIBLE_DEVICES=0 # muilt-gpu is support
$ export MODEL_BATCH_SIZE=6
$ export PORT=18001
```
```sh
$ docker run --restart=always -itd --gpus all --name=vcj_server\
    -p ${PORT}:8888\
    -e"MODEL_BATCH_SIZE"=${MODEL_BATCH_SIZE}\
    -e"CUDA_VISIBLE_DEVICES"=${CUDA_VISIBLE_DEVICES}\
    vcj_server
```