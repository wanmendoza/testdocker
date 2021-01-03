#!/bin/bash
echo "argc = ${#*}"
echo "argv = ${*}"

exec "node ./app.js"

