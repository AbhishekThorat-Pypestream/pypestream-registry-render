FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

COPY ./.verdaccio/config.yaml /verdaccio/conf
COPY ./.verdaccio/htpasswd /verdaccio/conf/htpasswd
USER verdaccio
