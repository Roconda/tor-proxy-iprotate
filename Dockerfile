FROM alpine:edge

RUN apk add --no-cache tor
RUN sed "1s/^/SocksPort 0.0.0.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc
RUN echo "MaxCircuitDirtiness 30" >> /etc/tor/torrc

EXPOSE 9050
USER tor

CMD ["/usr/bin/tor"]
