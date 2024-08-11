#!/bin/bash
sudo yum install java-1.8.0-openjdk -y
export JAVA_HOME=/usr/java/jdk.1.8.0_161
export PATH=$PATH:$JAVA_HOME
export JRE_HOME=/usr/java/jdk1.8.0_161/jre
export PATH=$PATH:$JRE_HOME/bin
export JAVA_HOME=/usr/java/jdk1.8.0_161
export JAVA_PATH=$JAVA_HOME
export PATH=$PATH:$JAVA_HOME/bin
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.rpm
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.rpm.sha512
sudo rpm --install elasticsearch-6.2.4.rpm
sudo systemctl daemon-reload
sudo systemctl start elasticsearch.service
sudo systemctl enable elasticsearch.service
systemctl start firewalld
systemctl enable firewalld
sudo firewall-cmd --zone=public --add-port=9200/tcp --permanent
sudo firewall-cmd --reload
