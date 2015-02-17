FROM centos:latest
MAINTAINER Cole Brumley "https://github.com/colebrumley"
RUN yum -y install python-setuptools python-setuptools-devel wget
RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm && rpm -ivh epel-release-7-5.noarch.rpm && rm -f epel-release-7-5.noarch.rpm
RUN yum -y install python-pip
RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d
RUN easy_install supervisor
RUN pip install supervisor-stdout
RUN pip install superlance
ADD supervisor.conf /etc/supervisor.conf
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
