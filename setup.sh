# clean
rm -rf server/
rm -rf client/
rm -rf trained_model/
rm -rf trained_model.zip

# clone from git
git clone https://github.com/p208p2002/Visualize-CJ-server.git server
git clone https://github.com/p208p2002/Visualize-CJ-client.git client
wget http://140.120.13.242:7000/trained_model.zip

# unzip & clean
unzip trained_model.zip
cp -r trained_model server/lib/cjbert/bert-question-answer/
rm -rf trained_model/
rm -rf trained_model.zip