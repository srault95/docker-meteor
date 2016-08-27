FROM node:4.4.7

ENV LC_ALL C.UTF-8
ENV LANG C
ENV METEORD_DIR /opt/meteord

COPY scripts $METEORD_DIR

RUN $METEORD_DIR/lib/install_phantomjs.sh
RUN $METEORD_DIR/lib/cleanup.sh

EXPOSE 80

CMD $METEORD_DIR/run_app.sh

