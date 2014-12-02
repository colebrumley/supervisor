FROM centos:latest
MAINTAINER Cole Brumley "https://github.com/elcolio"
RUN rpm -ivhy http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install python-setuptools python-setuptools-devel python-pip
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d
RUN easy_install supervisor
ADD supervisor.conf /etc/supervisor.conf
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
