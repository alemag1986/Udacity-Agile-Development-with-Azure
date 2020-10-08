venv_path = ~/.udacityenv
venv_path_active = $(venv_path)/bin/activate

install:
	. $(venv_path_active) &&\
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test:
	. $(venv_path_active) &&\
		python -m pytest -vv --cov=app tests/*.py

lint:
	. $(venv_path_active) &&\
		pylint --disable=R,C,W1203,W0702 app.py
		
updatepython:
	python3 -m pip install --upgrade pip

installenv:
	python3 -m venv $(venv_path)

freezeenv:
	. $(venv_path_active) &&\
		pip freeze > requirements.txt

prediction:
	./predict_scripts/make_prediction.sh

predictionazure: 
	./predict_scripts/make_predict_azure_app.sh

setupenv: updatepython installenv
all: install lint test
