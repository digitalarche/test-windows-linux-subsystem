#!/bin/bash

# Setup.
rm -rf httpie/
virtualenv --python=python2.7 --clear env
source env/bin/activate

git clone https://github.com/jkbrzt/httpie

# Install dependencies and run tests.
cd httpie
pip install -r requirements-dev.txt
tox

# Get ourselves out of this env.
deactivate