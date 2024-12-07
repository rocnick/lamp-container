#!/bin/bash

docker compose down -v

docker network create lamp
docker build -t web-server -f Dockerfile .

docker compose up -d