FROM ubuntu:xenial

ADD https://github.com/dashpay/dash/releases/download/v0.17.0.2/dashcore-0.17.0.2-x86_64-linux-gnu.tar.gz /tmp/

RUN cd /tmp && tar xvf dash*.tar.gz && cp -r /tmp/dashcore*/bin/* /usr/bin && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

RUN mkdir /data && chmod 777 /data

EXPOSE 16001
WORKDIR /tmp
ENTRYPOINT dashd -server -testnet -datadir=/data -printtoconsole -rpcuser=user -rpcpassword=pass -rpcport=16001 -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 -rpcssl=0
