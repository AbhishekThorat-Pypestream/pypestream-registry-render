FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

COPY config.yaml /verdaccio/conf
USER verdaccio

