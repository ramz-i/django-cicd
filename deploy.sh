#!/bin/bash
set -e

cd /home/ec2-user/django-cicd

pip3 install -r requirements.txt

python3 manage.py migrate

nohup python3 manage.py runserver 0.0.0.0:8000 &
