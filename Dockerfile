FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

# Need to remove this?
RUN chmod -R 777 /verdaccio/conf/
USER verdaccio

#Need to add support for esm
# minor changes to dockerfile
