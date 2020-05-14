FROM amazonlinux:2

LABEL this.os="Amazon Linux 2" \
      this.hostname="tf-executor"

RUN yum install -y wget unzip util-linux-ng epel-release nmap tree python-pip git-core which jq

RUN pip install --upgrade pip
RUN pip install --upgrade awscli

RUN git clone https://github.com/tfutils/tfenv.git /.tfenv

RUN ln -s /.tfenv/bin/* /usr/local/bin

ADD ./services /opt
