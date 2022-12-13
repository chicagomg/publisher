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

log "Works!"
mkdir -p /__w/milk/milk/newhorizons
 