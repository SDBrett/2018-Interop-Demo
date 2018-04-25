FROM jenkins/jenkins:lts

ENV RUBY_VERSION 2.4.1
ENV PATH $PATH:/usr/local/rvm/bin
VOLUME /var/jenkins_home

USER root
RUN apt-get update

RUN apt-get install -y \
    python-virtualenv \
    python-pip

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /bin/bash -lc "rvm requirements"
RUN usermod -a -G rvm jenkins

USER jenkins

RUN /bin/bash -lc  "rvm install $RUBY_VERSION && rvm use $RUBY_VERSION --default"
RUN echo "gem: --no-rdoc --no-ri" >> ~/.gemrc
RUN /bin/bash -lc ". /usr/local/rvm/bin/rvm"
RUN /bin/bash -lc  "gem install bundler --no-doc --no-ri"
RUN pip install --upgrade pip