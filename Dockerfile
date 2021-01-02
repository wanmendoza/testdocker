ARG SALUDO=vida

FROM selenium/standalone-chrome

WORKDIR /testdocker

ENV SALUDO=${SALUDO}

RUN sed -i -e 's/Mundo/'${SALUDO}'/g' app.js


ENTRYPOINT node app.js