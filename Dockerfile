FROM debian:jessie

RUN apt-get update && apt-get install -y redis-server

EXPOSE 6379
ENTRYPOINT ["redis-server"]
CMD ["--bind", "0.0.0.0"]
