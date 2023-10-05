#!/bin/bash


echo "Update composer dependencies..."
docker-compose run --rm composer update

echo "Update Node.js dependencies..."
docker-compose run --rm npm update

echo "All dependencies have been updated."
