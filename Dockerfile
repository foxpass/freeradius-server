FROM ubuntu:18.04
MAINTAINER Karthik Gooli karthik@foxpass.com
WORKDIR /opt/radius
RUN apt-get -y update
RUN apt-get -y install build-essential
RUN apt-get -y install libtalloc-dev libssl-dev openssl
COPY . /opt/radius
RUN ./configure
RUN make
RUN make install
ENTRYPOINT ["radiusd", "-X"]
