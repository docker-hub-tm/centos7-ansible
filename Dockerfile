FROM centos:latest

RUN set -x && \
    rm -f /etc/rpm/macros.image-language-conf && \
    sed -i '/^override_install_langs=/d' /etc/yum.conf && \
    yum -y reinstall glibc-common && \
    yum clean all && \
    yum update -y && \
    yum install -y epel-release git && \
    yum -y install expect python-devel python-pip && \
    pip install --upgrade pip && pip install --upgrade setuptools && \
    pip install ansible && \
    pip install ansible-lint
