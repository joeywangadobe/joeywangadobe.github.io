#!/bin/bash
cd /home/azureuser
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-i586.rpm
sudo yum localinstall -y jdk-8u161-linux-i586.rpm
# wget -O /home/azureuser/jmeter.tgz https://rawgit.com/joeyzywang/azurejmeter/master/apache-jmeter-3.3.tgz
# tar zvxf /home/azureuser/jmeter.tgz -C /home/azureuser/
# mv /home/azureuser/apache-jmeter-3.3/bin/jmeter /home/azureuser/apache-jmeter-3.3/bin/jmeter_bkup
# sed 's/HEAP="-Xms512m -Xmx512m"/HEAP="-Xms8000m -Xmx10000m"/' /home/azureuser/apache-jmeter-3.3/bin/jmeter_bkup > /home/azureuser/apache-jmeter-3.3/bin/jmeter
# chmod 755 /home/azureuser/apache-jmeter-3.3/bin/jmeter
# /home/azureuser/apache-jmeter-3.3/bin/jmeter-server