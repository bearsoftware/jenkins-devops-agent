FROM jenkins/jnlp-slave

#Add Docker, Ansible, Terraform

USER root

RUN apt-get update

RUN apt-get install -y \
  git python python-pip bash curl gcc docker

RUN groupadd docker && usermod -aG docker jenkins

