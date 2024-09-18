# SRE-WORKSTATION
## Configuration files to create an debian-based image to use daily as SRE.

#### Requirements
- Current user added into sudoers
- Docker
- Internet access
#### Usage
Terraform configuration file: /credentials/terraform.tfrc

AWS configuration file: /credentials/aws_config

Kubectl configuration file: /credentials/kube_config


##### Image build
sudo docker build ./base/Dockerfile -t \<tagname\>

##### Run container
sudo docker run -v \<absolute path to directory\>:/credentials -ti \<tagname\>

