# rm old image
(docker stop vcj_client&&docker rm vcj_client);
(docker image rm vcj_client);
(docker stop vcj_server&&docker rm vcj_server);
(docker image rm vcj_server);

# build client image
echo "REACT_APP_API_HOST=${REACT_APP_API_HOST}:${SERVER_PORT}" >> client/.env # setting .env
cd client&&sh docker-build.sh
cd ../

# build server image
cd server&&sh docker-build.sh
cd ../

# run
docker run --restart=always -itd -p ${CLIENT_PORT}:3000 --name=vcj_client vcj_client
nvidia-docker run --restart=always -itd -p ${SERVER_PORT}:8888 --name=vcj_server\
  -e"MODEL_BATCH_SIZE"={$MODEL_BATCH_SIZE}\
  -e"CUDA_VISIBLE_DEVICES"={$VCJ_CUDA_VISIBLE_DEVICES}\
  vcj_server
