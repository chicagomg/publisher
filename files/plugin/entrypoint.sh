#!/usr/bin/env bash

set -eo pipefail

function log {
    GREEN='\033[0;32m'
    NC='\033[0m' # No Color
    printf "${GREEN}$(date +%T) [INFO]${NC} $1\n"
}

function error {
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    printf "${RED}$(date +%T) [ERROR]${NC} $1\n"
}

log "login to github registry"
echo ${{ secrets.github_token }} | docker login ghcr.io -u ${{ github.actor }} --password-stdin
log "build image"
docker build -t ghcr.io/$GITHUB_REPOSITORY .
log "push image to ghcr.io"
docker push ghcr.io/$GITHUB_REPOSITORY
