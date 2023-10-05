#!/bin/bash

echo "Installing Composer dependencies..."
docker-compose run --rm composer require inertiajs/inertia-laravel
docker-compose run --rm composer require tightenco/ziggy

echo "Installing npm dependencies..."
docker-compose run --rm npm i

echo "Running Laravel migrations and seeding the database..."
docker-compose run --rm laravel-migrate-seed

echo "Starting Docker containers with nginx..."
docker-compose up --build nginx -d

echo "Installing Composer dependencies again..."
docker-compose run --rm composer install

echo "Starting the development server..."
docker-compose run --rm --service-ports npm run dev

echo "Installation is complete. Good luck!"
