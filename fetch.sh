#!/bin/sh

set -euo pipefail

git remote add origin-deploy $GITREMOTE
git fetch origin-deploy
git fetch origin-deploy --tags
