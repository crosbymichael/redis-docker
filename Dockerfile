FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends redis-server

EXPOSE 6379
ENTRYPOINT ["redis-server"]
CMD ["--bind", "0.0.0.0", "--save", "900", "1", "--save", "300", "10", "--save", "60", "10000"]
