install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

updatepython:
	python3 -m pip install --upgrade pip

installenv:
	python3 -m venv ~/.udacityenv

activateenv:	
	source ~/.udacityenv/bin/activate

lint:
	pylint --disable=R,C hello.py

envsetup: updatepython installenv activateenv
all: install lint test