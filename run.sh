#!/bin/bash
cd /home/azureuser
yum install java-1.8.0-openjdk
wget -O /home/azureuser/jmeter.tgz https://rawgit.com/joeyzywang/azurejmeter/master/apache-jmeter-3.3.tgz
tar zvxf /home/azureuser/jmeter.tgz -C /home/azureuser/
chown -R azureuser:azureuser /home/azureuser/apache-jmeter-3.3
mv /home/azureuser/apache-jmeter-3.3/bin/jmeter /home/azureuser/apache-jmeter-3.3/bin/jmeter_bkup
sed 's/HEAP="-Xms512m -Xmx512m"/HEAP="-Xms8192m -Xmx10240m"/' /home/azureuser/apache-jmeter-3.3/bin/jmeter_bkup > /home/azureuser/apache-jmeter-3.3/bin/jmeter
chmod 755 /home/azureuser/apache-jmeter-3.3/bin/jmeter