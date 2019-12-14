#!/usr/bin/env bash

echo 'Install jar in local'
set -x
mvn jar:jar install:install help:evaluate -Dexpression=project.name
set +x

echo 'extracts the value of the <name/> element within <project/> of pom.xml file'
set -x
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x

echo 'extracts the value of the <version/> element within <project/>'
set -x
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x

echo 'Runs and outputs the execution of Java, then deploy to desitination server(s) /tmp folder'
set -x
java -jar target/${NAME}-${VERSION}.jar
scp -p target/${NAME}-${VERSION}.jar root@centos-node1:/tmp

