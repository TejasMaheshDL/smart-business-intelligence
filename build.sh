#!/usr/bin/env bash

set -o errexit

echo "Starting static file collection..."
python manage.py collectstatic --noinput

echo "Applying database migrations..."
python manage.py migrate

echo "Build steps completed successfully."