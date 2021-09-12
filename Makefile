
setup:
	# Create python virtualenv & source it
	# source ~/.project5/bin/activate
	python3 -m venv ~/.project5

install:
	pip install -r requirements.txt &&\
		wget -O hadolint https://github.com/hadolint/hadolint/releases/download/v2.6.1/hadolint-Linux-x86_64 &&\
		chmod +x hadolint

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	./hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

all: install lint 
