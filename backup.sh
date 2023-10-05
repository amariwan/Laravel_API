#!/bin/bash

echo "Creating a backup of the database..."
docker-compose exec db sh -c 'mysqldump -u root -pPASSWORD DATABASE_NAME > /backup/backup.sql'

echo "Creating a backup of the application code..."
tar -czvf app_backup.tar.gz app_folder/

echo "Backups have been successfully created."
