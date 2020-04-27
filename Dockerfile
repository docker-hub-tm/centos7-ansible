FROM centos:7

RUN set -x && \
    yum clean all && \
    yum update -y && \
    yum install -y epel-release git && \
    yum -y install expect python-devel python-pip && \
    pip install --upgrade pip && pip install --upgrade setuptools && \
    pip install ansible==2.9.6
