#!/bin/bash

# Release archives do not contain .git metadata; provide the exact version
# so setuptools-scm can still generate cuda/pathfinder/_version.py.
export SETUPTOOLS_SCM_PRETEND_VERSION_FOR_CUDA_PATHFINDER=$PKG_VERSION

# Build subpackage
DIR_NAME="$(echo $PKG_NAME | tr '-' '_')"
cd $DIR_NAME
$PYTHON -m pip install . --no-deps --no-build-isolation -vv
