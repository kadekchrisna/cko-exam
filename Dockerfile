FROM docker.io/library/centos
MAINTAINER Kadek Chresna <kadekchresna@gmail.com>

RUN yum install -y httpd && \
    yum clean all
EXPOSE 80

COPY src/  /var/www/html

CMD ["httpd", "-D", "FOREGROUND"]
