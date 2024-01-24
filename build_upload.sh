#!/bin/bash

# Replace these variables with your actual values

REPOSITORY_URL="https://upload.pypi.org/legacy/"
# export souJpgDiffusersVersion=1.2.7

# Clean up any previous builds and distributions
rm -rf build/ dist/

# Build the package
# python setup.py sdist bdist_wheel
python setup.py bdist_wheel
# Install twine if not already installed
# pip install twine

# Upload the package to the repository using twine
#--repository-url $REPOSITORY_URL
twine upload -r pypi   dist/*

# Clean up build artifacts
rm -rf build/ dist/
