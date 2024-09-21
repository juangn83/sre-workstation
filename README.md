# SRE-WORKSTATION
## This is my personal project to create an debian-based container image to use daily as SRE.

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

## To Do:
- Use the /credentials directory as a volume for the container.