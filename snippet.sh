#!/bin/bash
echo "Trayendo la ultima version de git"
cd /tmp
rm -rf TrabajoIntegradorWebIII
echo "Borrado version vieja"
git clone -b produccion --single-branch https://github.com/BidoneAndres/TrabajoIntegradorWebIII.git
echo "Version actualizada"
echo "Dependencias de maven"
cd ~/infraestructura-keycloak
docker run -it --rm   -v "$HOME/.m2:/root/.m2"   -v /tmp/TrabajoIntegradorWebIII/trabajointegrador:/usr/src/mymaven   -w /usr/src/mymaven   maven:3.9.11-amazoncorretto-21-debian   mvn clean package -Dmaven.test.skip=true -Dbuildwar -Dspring.profiles.active=mysqlprod
sudo rm -rf tomcat/webapps/ROOT
mkdir tomcat/webapps/ROOT
cp /tmp/TrabajoIntegradorWebIII/trabajointegrador/target/ROOT.war ~/infraestructura-keycloak/tomcat/webapps/ROOT/ROOT.zip
cd tomcat/webapps/ROOT/
unzip ROOT.zip
rm ROOT.zip
