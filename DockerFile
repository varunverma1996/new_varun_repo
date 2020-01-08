FROM centos:7
MAINTAINER Prateek
LABEL Remarks="this docker file is for http apache"
RUN yum install httpd* -y && \
COPY /root/httpd.conf /etc/httpd/conf/httpd.conf && \
ADD /root/index.html /var/www/html && \
EXPOSE 80 
ENV HOME /root
WORKDIR /root
ENTRYPOINT ["ping"]
CMD ["google.com"]
USER root


