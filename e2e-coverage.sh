#!/bin/bash
set -e

# build production app in ./dist
npm run build

# instrument production JS code in ./dist
npx @teamscale/javascript-instrumenter ./dist/ --collector localhost:54678 --in-place

# run an HTTP server to serve the built and instrumented code
npx http-server --port 4200 ./dist &
SERVERPID="$!"

# run e2e tests against the built and instrumented code
npm run e2e-with-coverage

# shut down HTTP server
kill "$SERVERPID"

