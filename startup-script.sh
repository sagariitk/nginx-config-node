#!/bin/sh

cd 

sudo apt update

sudo apt install -y nginx

# sudo rm /etc/nginx/sites-enabled/default

sudo git clone https://github.com/sagariitk/nginx-config-node.git

cd nginx-config-node/

sudo mv default.txt /etc/nginx/sites-enabled/default

sudo chmod 644 /etc/nginx/sites-enabled/default

sudo service nginx restart

#node and npm install

sudo apt install -y curl

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt update

sudo apt install -y nodejs

# for express server

cd 

git clone https://github.com/sagariitk/vijay-express.git

cd vijay-express

sudo npm install

sudo npm install -g pm2 --save

pm2 start pm2.json

# for react server

cd 

git clone https://github.com/sagariitk/vijay-react.git

cd vijay-react

sudo npm install

# sudo npm install -g pm2 --save

pm2 start pm2.json

