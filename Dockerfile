FROM debian:latest

RUN apt-get update && apt-get upgrade -y

RUN apt install -y wget 

RUN apt install -y lsb-release apt-transport-https ca-certificates

RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list

RUN apt update

RUN apt install -y php8.0 
