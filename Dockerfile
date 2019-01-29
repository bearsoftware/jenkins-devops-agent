FROM jenkins/jnlp-slave

#Add Docker, Ansible, Terraform

USER root

RUN apt-get update

RUN apt-get install -y \
  git python python-pip bash curl gcc

#Need to install docker command line this way - apt-get docker installs only the gui one
RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins

#RUN pip install --upgrade pip
#ADD requirements /root/requirements
#RUN pip install -r /root/requirements

#RUN curl https://releases.hashicorp.com/terraform/0.10.7/terraform_0.10.7_linux_amd64.zip -o terraform_0.10.7_linux_amd64.zip && \
#  unzip terraform_0.10.7_linux_amd64.zip && \
#  mkdir -p /usr/local/sbin && \
#  mv terraform /usr/local/sbin && \
#  rm -f terraform_0.10.7_linux_amd64.zip


