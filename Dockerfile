FROM ccr.fiicloud.foxconn.com/dale/centos7:openjdk180
USER root
COPY wandisco-git-release-7-2.noarch.rpm ./
RUN rpm -ivh wandisco-git-release-7-2.noarch.rpm
RUN rm -rf wandisco-git-release-7-2.noarch.rpm

RUN yum -y install git java-devel wget vim nano \
    && yum clean all
