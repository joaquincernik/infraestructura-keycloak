#!/bin/bash
docker run -it --rm   -v "$HOME/.m2:/root/.m2"   -v /tmp/TrabajoIntegradorWebIII/trabajointegrador:/usr/src/mymaven   -w /usr/src/mymaven   maven:3.9.11-amazoncorretto-21-debian   mvn clean package -Dmaven.test.skip=true -Dbuildwar -Dspring.profiles.active=mysqlprod
sudo rm -rf tomcat/webapps/ROOT
mkdir tomcat/webapps/ROOT
cp /tmp/TrabajoIntegradorWebIII/trabajointegrador/target/ROOT.war ~/infraestructura-keycloak/tomcat/webapps/ROOT/ROOT.zip
unzip tomcat/webapps/ROOT/ROOT.zip
rm tomcat/webapps/ROOT/ROOT.zip
