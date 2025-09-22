#!/bin/bash

# 현재 스크립트와 같은 디렉토리의 .env 파일 불러오기
source "$(dirname "$0")/.env"

echo "Updating DuckDNS for $DUCKDNS_DOMAIN..."

# DuckDNS 업데이트 요청
RESULT=$(curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN}&token=${DUCKDNS_TOKEN}&ip=")

echo "DuckDNS update result: $RESULT"