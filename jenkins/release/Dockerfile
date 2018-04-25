FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update

RUN apt-get install -y \
    python-virtualenv \
    python-pip

USER jenkins
RUN pip install --upgrade pip