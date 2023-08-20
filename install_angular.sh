#!/bin/sh
clear
echo "downloadsing node for macos"
#wget https://nodejs.org/dist/v18.17.1/node-v18.17.1.pkg
curl https://nodejs.org/dist/v18.17.1/node-v18.17.1.pkg  --output node-v18.17.1.pkg 
sudo installer -pkg ./node-v18.17.1.pkg -target /usr/local/bin
sudo npm install -g n
echo "checking versions"
echo "node version = "
node -v
echo "npm version = "
npm -v
sudo npm install -g @angular/cli
echo "Required Angular software stack installed on MacOS"
echo "============"
echo "To create a new app: ng new my-app"
echo " "
echo "cd my-app"
echo "ng serve --open"
echo "IF issues chown -R jfall:staff /Users/jfall/.npm"
echo "create test app"
ng new test-app
cd test-app
ng add @angular/material
code .
