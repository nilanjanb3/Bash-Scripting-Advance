#!/bin/bash

# configuration
REPO_URL="https://github.com/spring-projects/spring-petclinic.git"
REPO_NAME="spring-petclinic"
WORKDIR="/app"
BACKUP_DIR="/backup/app"

# Backup existing deployment

echo "Backing up current deployment..."
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_$(date +"%Y%m%d%H%M%S").tar.gz $WORKDIR
rm -rf $WORKDIR

# Pull the latest code VCS
mkdir -p $WORKDIR
cd $WORKDIR
git clone $REPO_URL
cd $REPO_NAME

# Build and Packaging your application if needed
echo "Building or compiling the application..."
./mvnw package


# Running the Application 

java -jar target/*.jar

# The application can be accessed via http://localhost:8080