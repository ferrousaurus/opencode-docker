FROM oven/bun:debian
ARG repo

RUN git clone $repo \
    && bun add -g opencode-ai

WORKDIR /usr/src
USER bun
EXPOSE 3000/tcp
ENTRYPOINT [ "opencode" ]
