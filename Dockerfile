FROM scratch AS base
ADD alpine-minirootfs-3.23.3-x86_64.tar /
COPY strona.sh /strona.sh
RUN chmod +x /strona.sh
CMD ["/bin/sh"]

FROM nginx:latest
ARG VERSION
ENV VERSION=${VERSION:-latest}
COPY --from=base /strona.sh . 
EXPOSE 80
HEALTHCHECK CMD curl localhost
CMD ["/bin/sh", "-c", "/strona.sh && exec nginx -g 'daemon off;'"]
