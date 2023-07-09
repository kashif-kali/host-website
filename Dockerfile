FROM centos:latest
MAINTAINER kashahmed510@gmail.com
RUN yum update 
RUN yum install -y httpd 
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/downloads/page254/photogenic.zip  /var/www/html/
WORKDIR /var/www/html/
RUN unzip  photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd" ,"-D ", "FOREGROUND"]
EXPOSE 80
