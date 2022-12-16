FROM alpine:3.17.0
# FROM alpinelinux/docker-cli
# FROM ubuntu:22.04
WORKDIR /work
RUN apk update
RUN apk add logrotate docker-cli

COPY [".", "."]
RUN crontab crontasks
RUN chmod 644 /work/traefik-logrotate
# RUN chmod +x /work/start.sh
RUN chmod +x /work/task.sh
CMD ["sh", "/work/start.sh"]

# CMD sleep 10000
# RUN chmod +x /work/entrypoint.sh
# ENTRYPOINT ["sh", "/work/entrypoint.sh"]
# CMD ["crond", "-f"]
