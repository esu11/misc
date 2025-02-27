#!/bin/bash

# Set variables
tcatold=$(curl http://localhost:8080 | rev | cut -c 20-25 | rev)
tcatnew=9.0.100

#tcatnew=$(curl https://dlcdn.apache.org/tomcat/tomcat-9/ | awk 'FNR == 9 {print $5}' | cut -c 8-13)

wget -P /tmp https://dlcdn.apache.org/tomcat/tomcat-9/v$tcatnew/bin/apache-tomcat-$tcatnew.tar.gz
tar xzvf /tmp/apache-tomcat-$tcatnew.tar.gz -C /tmp/
mv /tmp/apache-tomcat-$tcatnew /opt/tomcat/
ln -vfns /opt/tomcat/apache-tomcat-$tcatnew/ /opt/tomcat/latest
chown -R root:tomcat /opt/tomcat/latest/
sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'
systemctl restart tomcat9
rm /tmp/apache-tomcat-$tcatnew.tar.gz
rm -rf /opt/tomcat/apache-tomcat-$tcatold
