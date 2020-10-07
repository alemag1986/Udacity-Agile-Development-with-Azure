install:
    pip install --upgrade pip &&\
        pip install -r requirements.txt

test:
    python -m pytest -vv test_hello.py

env:
    python3 -m venv ~/.udacityenv
    source ~/.udacityenv/bin/activate

lint:
    pylint --disable=R,C hello.py

all: install lint test