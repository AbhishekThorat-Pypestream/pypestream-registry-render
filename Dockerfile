FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

RUN yarn install
COPY config.yaml /verdaccio/conf
USER verdaccio

