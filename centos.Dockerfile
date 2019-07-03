FROM centos

RUN useradd -ms /bin/bash bower_gulp
RUN yum install -y gcc-c++ make
RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs

# install bower
RUN npm install --global bower

USER bower

#this should show bower help - try to use install instead
RUN bower help