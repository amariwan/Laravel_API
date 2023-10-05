#!/bin/bash

echo "Removing temporary files..."
docker-compose run --rm php artisan cache:clear
docker-compose run --rm php artisan view:clear
docker-compose run --rm npm run clean

echo "The environment has been cleaned."
