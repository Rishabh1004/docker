FROM centos:latest
MAINTAINER rishabh_pandey@htomail.com
RUN yum install -y httpd \
  zip \
ADD https://www.free.css.com/assest/file/free-css-template/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
