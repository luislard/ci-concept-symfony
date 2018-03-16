#!/bin/bash

export SYMFONY_INSTALLER='composer create-project symfony/framework-standard-edition symfony 3.4.* --no-interaction'

sudo rm -rf app
docker-compose exec php bash -c "$SYMFONY_INSTALLER"
docker-compose up -d nginx
