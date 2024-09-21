FROM debian:latest
RUN apt update
RUN apt install -y python3 python3-pip curl wget vim less unzip lsb-release screen git
ENV CREDDIR=/credentials
ENV INSTLOG=$CREDDIR/installed_clients
RUN mkdir -p $CREDDIR
# Ansible Setup
RUN apt install -y ansible
RUN mkdir -p /etc/ansible
RUN ansible --version >> $INSTLOG
# Terraform Setup
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update
RUN apt install -y terraform
ENV TF_CLI_CONFIG_FILE=/credentials/terraform.tfrc
RUN touch $TF_CLI_CONFIG_FILE
RUN terraform --version >> $INSTLOG

# AWS Cli Setup
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version >> $INSTLOG
ENV AWS_CONFIG_FILE=/credentials/aws_config 
ENV AWS_ACCESS_KEY_ID=
ENV AWS_SECRET_ACCESS_KEY=
RUN touch $AWS_CONFIG_FILE
# Kubectl Setup
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
RUN kubectl version --client >> $INSTLOG
ENV KUBECONFIG=/credentials/kube_config
RUN touch $KUBECONFIG


