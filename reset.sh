#!/bin/bash

echo "Stopping and removing containers and networks..."
docker-compose down

echo "Performing cleanup..."
docker-compose run --rm php artisan cache:clear
docker-compose run --rm php artisan view:clear
docker-compose run --rm php rm -rf node_modules


echo "Reconstruction and redesign of containers..."
docker-compose up --build -d

echo "Die Entwicklungsumgebung wurde zurückgesetzt."
