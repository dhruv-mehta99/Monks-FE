#!/bin/bash

# Script to set environment for the Monks Frontend application
# Usage: ./scripts/set_env.sh [local|staging|prod]

ENV=${1:-local}

case $ENV in
  local)
    echo "Setting environment to LOCAL"
    echo "ENVIRONMENT=local" > .env
    echo "API_BASE_URL=http://localhost:8080" >> .env
    ;;
  staging)
    echo "Setting environment to STAGING"
    echo "ENVIRONMENT=staging" > .env
    echo "API_BASE_URL=https://monks-be-production.up.railway.app" >> .env
    ;;
  prod)
    echo "Setting environment to PRODUCTION"
    echo "ENVIRONMENT=prod" > .env
    echo "API_BASE_URL=https://api.monks-production.com" >> .env
    ;;
  *)
    echo "Invalid environment. Use: local, staging, or prod"
    exit 1
    ;;
esac

echo "Environment set to: $ENV"
echo "API Base URL: $(grep API_BASE_URL .env | cut -d'=' -f2)"
echo ""
echo "Run 'dart run build_runner build' to regenerate environment files"
