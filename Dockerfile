FROM centos:7
RUN yum install -y java-1.8.0-openjdk-1.8.0.262.b10-1.el7.x86_64  && yum clean all
#FROM registry.cn-hangzhou.aliyuncs.com/gcr2023/centos7:openjdk180
USER root
COPY wandisco-git-release-7-2.noarch.rpm ./
RUN rpm -ivh wandisco-git-release-7-2.noarch.rpm
RUN rm -rf wandisco-git-release-7-2.noarch.rpm

RUN yum -y install git java-devel wget vim nano \
    && yum clean all
