#!/bin/bash
sudo yum install -y java-1.8.0-openjdk
wget -O /jmeter.tgz https://rawgit.com/joeyzywang/azurejmeter/master/apache-jmeter-3.3.tgz
tar zvxf /jmeter.tgz -C /
mv /apache-jmeter-3.3/bin/jmeter /apache-jmeter-3.3/bin/jmeter_bkup
sed 's/HEAP="-Xms512m -Xmx512m"/HEAP="-Xms8000m -Xmx10000m"/' bin/jmeter_bkup > bin/jmeter
chmod 755 bin/jmeter