FROM nginx:stable
COPY site.template /tmp/site.template
ENV SOURCE_DOMAIN=src.domain.tld TARGET_DOMAIN=tgt.domain.tld SCHEME=https
CMD /bin/bash -c "envsubst < /tmp/site.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
EXPOSE 8080
