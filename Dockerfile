FROM python:3.8-buster
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E52529D4
RUN echo "deb [arch=amd64] http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-get update && apt-get install -y vim dnsutils net-tools telnet curl locate default-mysql-client mongodb-org-shell redis-tools
CMD ["sleep", "7200"]
