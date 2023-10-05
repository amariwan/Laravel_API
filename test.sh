#!/bin/bash


echo "Perform tests for the application..."
docker-compose run --rm phpunit


echo "Tests have been performed successfully."
