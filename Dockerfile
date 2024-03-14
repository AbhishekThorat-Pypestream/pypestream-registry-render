FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

# Need to remove this?
RUN chmod -R 777 /verdaccio/conf/
USER verdaccio

FROM ghcr.io/esm-dev/esm.sh
ADD ./config.json /etc/esmd/config.json
CMD ["esmd", "--config", "/etc/esmd/config.json"]
#Need to add support for esm
# minor changes to dockerfile
