# redis 2.8.13

FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
    redis-server && \
    mkdir -p /redis && chown daemon:daemon /redis 

EXPOSE 6379
USER daemon
ENTRYPOINT ["redis-server"]
CMD ["--bind", "0.0.0.0", "--save", "900", "1", "--save", "300", "10", "--save", "60", "10000", "--dir", "/redis"]
