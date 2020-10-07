venv_path = ~/.udacityenv
venv_path_active = $(venv_path)/bin/activate

install:
	. $(venv_path_active) &&\
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test:
	. $(venv_path_active) &&\
		python -m pytest -vv test_hello.py

lint:
	. $(venv_path_active) &&\
		pylint --disable=R,C hello.py

updatepython:
	python3 -m pip install --upgrade pip

installenv:
	python3 -m venv $(venv_path)

envsetup: updatepython installenv
all: install lint test