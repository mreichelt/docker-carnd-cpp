FROM ubuntu:16.04

MAINTAINER Marc Reichelt <mcreichelt@gmail.com>

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install cmake wget build-essential libuv1-dev zlib1g-dev libssl-dev git -y  && \
    apt-get clean autoclean && \
    apt-get autoremove -y

RUN git clone https://github.com/uWebSockets/uWebSockets && \
    cd uWebSockets && \
    git checkout e94b6e1 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j4 && \
    make install && \
    cd ../.. && \
    ln -s /usr/lib64/libuWS.so /usr/lib/libuWS.so && \
    rm -r uWebSockets

VOLUME "/project"
WORKDIR "/project"
