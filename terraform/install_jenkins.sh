

#!/bin/bash
sudo yum -y update

echo "Install Java JDK 8"
yum remove -y java
yum install -y java-1.8.0-openjdk

echo "Install Maven"
yum install -y maven 

echo "Install git"
yum install -y git

echo "Install Docker engine"
yum update -y
yum install docker -y
#sudo usermod -a -G docker jenkins
#sudo service docker start
sudo chkconfig docker on

echo "Install Jenkins"
curl --silent --location http://pkg.jenkins-ci.org/redhat/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins --nogpgcheck


sudo usermod -a -G docker jenkins
sudo chkconfig jenkins on
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl start jenkins
sudo systemctl enable jenkins
