#!/bin/bash
#Git Installation Steps

yum update -y
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -y
echo 'hi'
yum install gcc perl-ExtUtils-MakeMaker -y
cd /opt
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.45.2.tar.gz
tar -xvf git-2.45.2.tar.gz
cd git-2.45.2
make prefix=/usr/local/git all
make prefix=/usr/local/git install
echo 'export PATH=$PATH:/usr/local/git/bin' >> ~/.bashrc
source ~/.bashrc
git --version
