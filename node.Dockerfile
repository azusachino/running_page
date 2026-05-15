FROM oven/bun:1
WORKDIR /root/running_page
COPY ./package.json /root/running_page/package.json
COPY ./bun.lock /root/running_page/bun.lock
RUN bun install --frozen-lockfile
