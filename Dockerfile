ARG img=python:3.6-alpine
FROM ${img}

ADD . /opt/mdtcollections
WORKDIR /opt/mdtcollections

RUN pip install pytest
RUN python setup.py sdist
RUN pip install dist/*.tar.gz