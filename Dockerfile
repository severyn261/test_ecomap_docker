FROM ubuntu

RUN apt-get update && apt-get install -y \
   libmysqlclient-dev \
   apache2 \
   libapache2-mod-wsgi \
   libapache2-mod-wsgi python-dev \
   memcached \
   python-pip \
   libxml2-dev \
   libxslt-dev \
   libssl-dev \
   python-dev \
   libgirepository1.0-dev \
   libcairo2-dev \
   libjpeg-dev \
   libgif-dev \
   libhashkit2 \
   libhashkit-dev \
   libmemcached-dev \
   libmemcached11 \
   libmemcachedutil2 \
   libsasl2-dev\
   wget\
   unzip\
   git \
   libffi-dev \
   libxslt1-dev \
   mysql-client \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN adduser ubuntu; echo ubuntu:ubuntu
RUN mkdir /home/ubuntu/home
RUN mkdir /home/ubuntu/home/workspace
RUN cd /home/ubuntu/home/workspace; git clone https://github.com/severyn261/test_ecomap_docker.git
RUN chown ubuntu:ubuntu -R /home/ubuntu/home & chmod 777 -R /home/ubuntu/home
RUN mv /home/ubuntu/home/workspace/test_ecomap_docker /home/ubuntu/home/workspace/test_ecomap
RUN bash /home/ubuntu/home/workspace/test_ecomap/testrun.sh
