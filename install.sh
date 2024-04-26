#!/bin/bash

brew install terraform
brew install tfenv tflint
brew install pre-commit
pre-commit install
pre-commit run -a
