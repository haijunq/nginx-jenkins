FROM nginx
RUN rm -f /etc/nginx/conf.d/*.conf
COPY jenkins.conf /etc/nginx/conf.d/.
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
