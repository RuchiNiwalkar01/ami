sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk
java -version
sudo apt-get install ruby -y
sudo apt-get install wget -y
cd /home/ubuntu
wget https://"${BUCKET_NAME_S3}".s3."${AWS_REGION}".amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start
sudo service codedeploy-agent status
wget https://s3."${AWS_REGION}".amazonaws.com/amazoncloudwatch-agent-"${AWS_REGION}"/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i -E ./amazon-cloudwatch-agent.deb