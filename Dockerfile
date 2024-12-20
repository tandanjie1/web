FROM bbc-registry.cn-hangzhou.cr.aliyuncs.com/docker/nginx:1.21.4

ENV APP_NAME="wevision-official-site" \
    BASE_DIR="/data/services/wevision-official-site" \
    TIME_ZONE="Asia/Shanghai" \
    NGINX_PORT=80

WORKDIR $BASE_DIR

RUN echo ${TIME_ZONE} > /etc/timezone \
    && mkdir -p /data/nginx/nginx-wevision-official-site/cache /data/nginx/nginx-wevision-official-site/logs

COPY ./ ./
COPY deploy/nginx.conf  /etc/nginx/nginx.conf
