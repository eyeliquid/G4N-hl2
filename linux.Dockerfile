# escape=`
FROM lacledeslan/gamesvr-hl2dm

HEALTHCHECK NONE

ARG BUILDNODE="unspecified"
ARG SOURCE_COMMIT

LABEL com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="LL Half-Life 2 Deathmatch Dedicated Freeplay Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-hl2dm"

COPY --chown=HL2DM:root ./sourcemod.linux /app/hl2mp/

COPY --chown=HL2DM:root ./sourcemod-configs /app/hl2mp/

COPY --chown=HL2DM:root ./dist /app/

COPY --chown=HL2DM:root ./ll-tests/*.sh /app/ll-tests

# UPDATE USERNAME & ensure permissions
RUN usermod -l HL2DMFreeplay HL2DM &&`
    chmod +x /app/ll-tests/*.sh &&`
    mkdir -p /app/hl2mp/logs;

USER HL2DMFreeplay

WORKDIR /app

CMD ["/bin/bash"]

ONBUILD USER root
