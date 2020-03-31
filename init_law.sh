# update
git pull
# clean
rm -rf server/
rm -rf client/
rm -rf trained_model/
rm -rf trained_model.zip

# clone from git
git clone -b find_law https://github.com/p208p2002/Visualize-CJ-server.git server
git clone -b find_law https://github.com/p208p2002/Visualize-CJ-client.git client
wget -O trained_model.zip http://140.120.13.242:7000/bert-base-chinese-drcd.zip
# wget -O trained_model.zip  http://178.128.89.37:12000/bert-base-chinese-drcd.zip

# unzip & clean
unzip trained_model.zip
cp -r trained_model server/lib/cjbert/bert-question-answer/
rm -rf trained_model/
rm -rf trained_model.zip