all: install

install:
	python setup.py install

test :
	black .
	flake8 . --statistics
	python -m pytest --pyargs --doctest-modules altair

test-coverage:
	python -m pytest --pyargs --doctest-modules --cov=altair --cov-report term altair

test-coverage-html:
	python -m pytest --pyargs --doctest-modules --cov=altair --cov-report html altair
test :
	black .
	flake8 . --statistics
	python -m pytest --pyargs --doctest-modules altair

test-coverage:
	python -m pytest --pyargs --doctest-modules --cov=altair --cov-report term altair

test-coverage-html:
	python -m pytest --pyargs --doctest-modules --cov=altair --cov-report html altair
