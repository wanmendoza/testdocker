FROM selenium/standalone-chrome

WORKDIR /testdocker

ENTRYPOINT node app.js