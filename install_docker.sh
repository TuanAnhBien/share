
# Update apt source
apt-get update && apt-get install apt-transport-https ca-certificates -y

# Add new GPG key
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# 
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main | tee /etc/apt/sources.list.d/docker.list

# Install recommended package
apt-get update && apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y

# Install Docker
apt-get update && apt-get install docker-engine -y
