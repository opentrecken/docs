FROM python:alpine3.18 as builder
WORKDIR /build

# install build dependencies
RUN apk add --update --no-cache \
      build-base gcc python3-dev musl-dev libffi-dev \
      jpeg-dev zlib-dev

# install python deps
COPY requirements.txt /build/requirements.txt
RUN pip install -r requirements.txt

# copy the source code to the container
COPY mkdocs.yaml /build/mkdocs.yaml
COPY docs/ /build/docs/

# create a destination folder for the rendered page
RUN mkdir /dist/

# build the page
RUN cd /build && \
  mkdocs build --config-file mkdocs.yaml --site-dir /dist/

FROM caddy:2.6.4
WORKDIR /caddy
EXPOSE 80
COPY --from=builder /dist/ /var/www/html/
ADD Caddyfile /etc/caddy/Caddyfile
