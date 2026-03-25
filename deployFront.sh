#!/bin/bash
cd /tmp/FrontEnd
git pull origin produccion
nvm use 16
npm install
sudo rm -rf ~/infraestructura-keycloak/front/dit
cp -r dist ~/infraestructura-keycloak/front
