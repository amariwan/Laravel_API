#!/bin/bash


echo "Restarting the nginx container..."
docker-compose restart nginx

echo "Restarting the php container..."
docker-compose restart php

echo "Restarting the mysql container..."
docker-compose restart mysql

echo "Restarting the phpmyadmin container..."
docker-compose restart phpmyadmin

echo "Restarting the redis container..."
docker-compose restart redis


echo "The services have been restarted successfully."
