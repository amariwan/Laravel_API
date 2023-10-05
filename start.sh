#!/bin/bash


echo "Start all Docker containers..."
docker-compose up -d

echo "Start the development server..."
docker-compose run --rm --service-ports npm run dev

echo "The services have been started successfully. Good luck!"
