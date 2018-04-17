#!/bin/sh

twine upload -u ${PYPIUSER} -p ${PYPITOKEN} dist/mdtcollections-*.tar.gz
