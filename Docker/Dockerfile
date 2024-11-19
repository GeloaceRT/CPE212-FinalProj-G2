FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean

EXPOSE 80

COPY ./Website /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
