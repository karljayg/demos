FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive

# Install dependecies
RUN apt-get update

RUN apt-get install apache2 supervisor git -y
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN rm -rf /var/www/html

ADD ./html /var/www/html

#RUN git clone https://github.com/iambryancs/demo.git /var/www/html

EXPOSE 80
CMD ["/usr/bin/supervisord"]
