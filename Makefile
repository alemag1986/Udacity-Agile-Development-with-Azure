venv_path = ~/.udacityenv
venv_path_active = $(venv_path)/bin/activate

install:
	. $(venv_path_active) &&\
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	. $(venv_path_active) &&\
		python -m pytest -vv test_hello.py

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	. $(venv_path_active) &&\
		pylint --disable=R,C,W1203 app.py
		
updatepython:
	python3 -m pip install --upgrade pip

installenv:
	python3 -m venv $(venv_path)

freezeenv:
	. $(venv_path_active) &&\
		pip freeze > requirements.txt

setupenv: updatepython installenv
all: install lint test