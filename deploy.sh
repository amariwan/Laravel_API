#!/bin/bash

echo "Creating a production version of the application..."
docker-compose run --rm npm run production

echo "The application is ready for deployment!"
