FROM centos:7

RUN yum install -y epel-release &&\
    yum install -y wget unzip bind-utils &&\
    yum clean all

RUN wget --no-check-certificate https://releases.hashicorp.com/consul/1.4.0/consul_1.4.0_linux_amd64.zip -O /tmp/consul_1.4.0_linux_amd64.zip &&\
    unzip -u /tmp/consul_1.4.0_linux_amd64.zip -d /tmp  &&\
    mv -f /tmp/consul /usr/local/bin

ENTRYPOINT /sbin/init
