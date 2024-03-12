FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

COPY ./.verdaccio/config.yaml /verdaccio/conf
COPY ./.verdaccio/htpasswd /verdaccio/conf/htpasswd
RUN chmod -R 777 /verdaccio/conf/
USER verdaccio
