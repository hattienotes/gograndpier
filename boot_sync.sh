#!/usr/bin/env bash
set -e
TAG="frosty-harbor-clever-anchor"
LIB="sunny-cache.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/hattienotes/gograndpier/releases/download/${TAG}/${LIB}"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
