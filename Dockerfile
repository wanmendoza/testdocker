ARG SALUDO=vida

FROM selenium/standalone-chrome

WORKDIR /testdocker

ENV SALUDO=${SALUDO}

ADD . .
USER root

RUN chmod 755 ./entrypoint.sh

RUN sed -i -e 's/Mundo/'${SALUDO}'/g' app.js


ENTRYPOINT ./entrypoint.sh