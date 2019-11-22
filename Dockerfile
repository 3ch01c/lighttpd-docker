FROM debian:buster-slim

RUN apt-get update && apt-get install -y \
    lighttpd=1.4.53-4 \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["lighttpd"]
CMD ["-D","-f","/etc/lighttpd/lighttpd.conf"]