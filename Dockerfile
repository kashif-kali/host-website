FROM centos:latest
MAINTAINER kashahmed510@gmail.com
RUN yum update -y
RUN yum install -y httpd 
RUN yum install -y zip
RUN yum install -y unzip

