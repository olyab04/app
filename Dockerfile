
# Download Centos
FROM centos:7

# Update OS
# RUN yum install -y


# Install packages 
RUN yum install telnet -y && \
    yum install httpd httpd-tools -y && \
    yum install wget -y && \
    yum install unzip -y 
EXPOSE 80

# Copy file into webserver
COPY index.html  /var/www/html/index.html
RUN  chmod 755    /var/www/html/index.html

# Keep application alive
CMD CMD ["/usr/sbin/httpd","-D","FOREGROUND"]