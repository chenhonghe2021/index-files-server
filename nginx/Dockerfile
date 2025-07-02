#FROM nginx:stable-alpine

#COPY nginx.conf /etc/nginx/nginx.conf
#COPY fix-permissions.sh /fix-permissions.sh
#COPY entrypoint.sh /entrypoint.sh

#RUN chmod +x /fix-permissions.sh /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

FROM nginx:stable-alpine

# 安装文件监控工具
RUN apk add --no-cache inotify-tools

COPY nginx.conf /etc/nginx/nginx.conf
COPY fix-permissions.sh /fix-permissions.sh
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /fix-permissions.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
