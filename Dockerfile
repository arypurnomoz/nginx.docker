FROM progrium/busybox

RUN \
  opkg-install nginx \
  && mkdir -p /var/log/nginx /var/lib/nginx

ADD nginx.conf /etc/nginx/nginx.conf
  
CMD ["nginx", "-g", "daemon off;"]

