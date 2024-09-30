install:
	pip install --upgrade pip && pip install -r requirements.txt
format:
	black *.py
run:
	python3 main.py

lint:
	pylint --disable=R,C main.py

test:
	python -m pytest -vv  test_*.py

all: install run test lint

