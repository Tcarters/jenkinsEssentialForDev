#!/usr/bin/bash

echo -e ">>>>>>>>>>>>>>>  JENKINS SET Up >>>>>>>>>>>>> \n"

REQUIRED_PKG="openjdk-11-jdk"

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG | grep "install ok installed" )
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG.. Setting up $REQUIRED_PKG............."
  sudo apt update -y  && \
  sudo apt-get --yes install $REQUIRED_PKG
  java -version

fi

echo -e ">>>>>>>>>>>>>>>  Adding JENKINS REPO >>>>>>>>>>>>>>>>>>> \n"

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

echo -e ">>>>>>>>>>>>>>>  JENKINS INSTALLATION  >>>>>>>>>>>>>>>>>>> \n"
sudo apt-get update -y  && sudo apt-get install -y jenkins
sleep 5


echo -e ">>>>>>>>>>>>>>>  CHECKING JENKINS SERVICE  >>>>>>>>>>>>>>>>>>> \n"
sleep 5

sudo systemctl is-active --quiet jenkins || service jenkins restart
systemctl | grep jenkins 
sleep 4
#sudo systemctl status jenkins
sudo netstat -tunapl | grep jenkins 

echo -e "\n\n Retrieve Admin password at: /var/lib/jenkins/secrets/initialAdminPassword "

echo -e ">>>>>>>>>>>>>> Add Jenkins to sudoers >>>>>>>>>>>>>>>> \n"
sudo echo -e "jenkins  ALL= NOPASSWD: ALL" >> /etc/sudoers