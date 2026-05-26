FROM oven/bun:debian
WORKDIR /usr/src
USER bun

RUN bun add -g opencode-ai

ARG repo
RUN git clone $repo

EXPOSE 3000/tcp
ENTRYPOINT [ "opencode", "web" ]
CMD [ "--port", "3000", "--mdns" ]
