FROM ubuntu:20.04

COPY /application /srv/flask_app
WORKDIR /srv/flask_app

#Install Nginx
RUN apt-get clean \
    && apt-get -y update

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-add-repository -y ppa:nginx/stable \
    && apt-get update \
    && apt-get install -y nginx \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y python3-pip

RUN pip install -r requirements.txt --src /usr/local/src

COPY application/nginx.conf /etc/nginx
RUN chmod +x ./startup.sh
CMD ["./startup.sh"]

