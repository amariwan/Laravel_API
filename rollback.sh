#!/bin/bash


echo "Rollback to a previous version of the application..."
docker-compose exec app php artisan migrate:rollback


echo "Rollback completed."
