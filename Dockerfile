ARG img=python:3.6-alpine
FROM ${img}
RUN apk add --no-cache git

ADD . /opt/mdtcollections
WORKDIR /opt/mdtcollections

RUN pip install pytest twine
RUN python setup.py sdist
RUN pip install dist/*.tar.gz