ARG SALUDO=vida

FROM selenium/standalone-chrome

WORKDIR /testdocker

ENV SALUDO=${SALUDO}

ADD . .
USER root

RUN sed -i -e 's/Mundo/'${SALUDO}'/g' app.js


ENTRYPOINT entrypoint.sh && node app.js