
FROM openresty/openresty:alpine

ARG BUILD_HASH=unknown

RUN apk add --no-cache tzdata

ENV TZ=Asia/Shanghai
ENV BUILD_HASH=${BUILD_HASH}

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/

COPY version.json /usr/share/nginx/html/

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
