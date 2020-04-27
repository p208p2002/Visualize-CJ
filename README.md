# Visualize-CJ
Auto deploy VCJ client and server
## Visualize-CJ-client
![Build](https://github.com/p208p2002/Visualize-CJ-client/workflows/Build/badge.svg?branch=master)
- [https://github.com/p208p2002/Visualize-CJ-client](https://github.com/p208p2002/Visualize-CJ-client)
## Visualize-CJ-server
- [https://github.com/p208p2002/Visualize-CJ-server](https://github.com/p208p2002/Visualize-CJ-server)
## Init
- `sudo apt install unzip`
- `sh init.sh`

## ENV Setting
```sh
export VCJ_CUDA_VISIBLE_DEVICES=0
export MODEL_BATCH_SIZE=6
export REACT_APP_API_HOST=http://API_HOST
export CLIENT_PORT=12500
export SERVER_PORT=12501
```

## Build with Docker 19.03+
```sh
sh init.sh&&sh build.sh
```

## Build with Nvidia-Docekr
``` sh
sh init.sh&&sh build_nv_docker.sh
```

## Law Build(252)
``` sh
sh init_law.sh&&sh build.sh
```
