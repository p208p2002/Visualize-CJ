# rm old image
(docker image rm vcj_client);
(docker stop vcj_client&&docker rm vcj_client);
(docker image rm vcj_server);
(docker stop vcj_server&&docker rm vcj_server);

# build client image
echo "REACT_APP_API_HOST=${REACT_APP_API_HOST}:${SERVER_PORT}" >> .env # setting .env
cd client&&sh docker-build.sh
cd ../

# build server image
cd server&&sh docker-build.sh
cd ../

# run
docker run -itd -p ${CLIENT_PORT}:3000 --name=vcj_client vcj_client
docker run -itd --gpus all -p ${SERVER_PORT}:8888 --name=vcj_server vcj_server