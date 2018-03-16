#!/bin/bash

export APP_PORT=${APP_PORT:-80}
export DB_PORT=${DB_PORT:-3306}
export DB_ROOT_PASS=${DB_ROOT_PASS:-root}
export DB_NAME=${DB_NAME:-symfony}
export DB_USER=${DB_USER:-user}
export DB_PASS=${DB_PASS:-user}
export TIMEZONE=Europe/Madrid

export SYMFONY_INSTALLER='composer create-project symfony/framework-standard-edition symfony 3.4.* --no-interaction'

docker-compose up -d \
  && docker-compose stop nginx
