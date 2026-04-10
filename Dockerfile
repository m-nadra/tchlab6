# syntax=docker/dockerfile:1
FROM alpine AS base
RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN --mount=type=ssh git clone git@github.com:m-nadra/tchlab6.git app
RUN chmod +x /app/strona.sh
CMD ["/bin/sh"]

FROM nginx:latest
ARG VERSION
ENV VERSION=${VERSION:-latest}
COPY --from=base /app/strona.sh . 
EXPOSE 80
HEALTHCHECK CMD curl localhost
CMD ["/bin/sh", "-c", "/strona.sh && exec nginx -g 'daemon off;'"]
