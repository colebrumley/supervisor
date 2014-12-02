FROM centos:latest
MAINTAINER Cole Brumley "https://github.com/elcolio"
RUN yum -y install python-setuptools python-setuptools-devel
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d
RUN easy_install supervisor
ADD supervisor.conf /etc/supervisor.conf
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
