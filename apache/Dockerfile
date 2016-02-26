FROM ubuntu:trusty
MAINTAINER PowerStormTech

# Install dependecies
RUN apt-get update

RUN apt-get install apache2 supervisor php5 libapache2-mod-php5 -y
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Enable PHP5 module
RUN a2enmod php5

RUN rm -rf /var/www/html

ADD ./html /var/www/html

EXPOSE 80
CMD ["/usr/bin/supervisord"]
