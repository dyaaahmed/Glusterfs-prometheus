FROM bitnami/golang:latest
MAINTAINER dyaa-ahmed
WORKDIR $GOPATH/src/github.com/gluster/gluster-prometheus
RUN mkdir -p $GOPATH/src/github.com/gluster && \
    cd $GOPATH/src/github.com/gluster && \
    git clone https://github.com/gluster/gluster-prometheus.git 
RUN ./scripts/install-reqs.sh && \
     PREFIX=/usr make && \
    PREFIX=/usr make install
CMD gluster-exporter --config=/etc/gluster-exporter/gluster-exporter.toml
