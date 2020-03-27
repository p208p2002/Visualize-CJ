# rm old image
(docker image rm vcj_client);
(docker rm vcj_client);
(docker image rm vcj_server);
(docker rm vcj_server);
# build client image
cd client
npm run docker-build
echo "REACT_APP_API_HOST=${REACT_APP_API_HOST}" >> .env
cd ../

# build server image
cd server&&sh docker-build.sh

# run
docker run -itd -p 12500:3000 --name=vcj_client vcj_client
docker run -itd --gpus all -p 12501:8888 --name=vcj_server vcj_server