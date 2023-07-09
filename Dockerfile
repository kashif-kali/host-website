FROM centos:latesst
MAINTAINER kashahmed510@gmail.com
RUN yum install httpd \
zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/downloads/page254/photogenic.zip  /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic photogenic.zip
CMD ["/usr/sbin/httpd" ,"-D ", "FOREGROUND"]
EXPOSE 80
