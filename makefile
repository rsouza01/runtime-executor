.DEFAULT_GOAL := help


help:
	@echo 'Available commands:'
	@echo -e 'runserver \t\t - \t Runs Flask server via gunicorn'
	@echo -e 'runserver-py \t\t - \t Runs Flask server via python'


###################################################################################
# WebServer
###################################################################################

runserver-py:
	python ./src/app.py

runserver:
	gunicorn --bind 0.0.0.0:5000 --chdir ./src wsgi:app