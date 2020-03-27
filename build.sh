# rm old image
(docker image rm vcj_client);
(docker rm vcj_client);
(docker image rm vcj_server);
(docker rm vcj_server);

#
export CLIENT_PORT=12500
export SERVER_PORT=12501

# build client image
cd client
echo "REACT_APP_API_HOST=${REACT_APP_API_HOST}:${SERVER_PORT}" >> .env # setting .env
npm run docker-build
cd ../

# build server image
cd server&&sh docker-build.sh

# run
docker run -itd -p ${CLIENT_PORT}:3000 --name=vcj_client vcj_client
docker run -itd --gpus all -p ${SERVER_PORT}:8888 --name=vcj_server vcj_server