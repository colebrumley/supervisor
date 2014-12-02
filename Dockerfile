FROM centos:latest
MAINTAINER Cole Brumley "https://github.com/elcolio"
RUN yum -y install supervisor
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d
ADD supervisor.conf /etc/supervisor.conf
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
