#!/bin/bash
set -e
redis-server /opt/redis/redis.conf
redis-sentinel /opt/redis/sentinel.conf
