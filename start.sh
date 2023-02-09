#!/usr/bin/env sh
set -eo pipefail
update-ca-certificates --fresh
cd /opt/outline
yarn db:migrate --env=production-ssl-disabled
yarn start