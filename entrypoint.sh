#!/bin/bash
python manage.py makemigrations
python manage.py migrate
gunicorn django_movie.wsgi:application --bind 0.0.0.0:8000
