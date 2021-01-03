#!/bin/bash
echo Your container args are: "$@"

exec "node app.js"