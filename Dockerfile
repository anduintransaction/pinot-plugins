FROM apachepinot/pinot:0.11.0

RUN mkdir -p /opt/pinot/plugins/anduin

ENV ANDUIN_PLUGINS_VERSION 0.1.2
COPY ./format/pinot-canal/target/pinot-canal-${ANDUIN_PLUGINS_VERSION}.jar /opt/pinot/plugins/anduin

ENTRYPOINT ["/opt/pinot/bin/pinot-admin.sh"]
