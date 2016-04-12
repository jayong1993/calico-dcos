FROM python:2.7
MAINTAINER Dan Osborne <daniel@projectcalico.org>

WORKDIR /code/
#RUN apt-get update && \
#    apt-get install -qy python-dev python-pip git libffi-dev libssl-dev procps

RUN pip install --upgrade pip
RUN pip install PyInstaller
ADD requirements.txt /code/
RUN pip install -r requirements.txt

RUN easy_install http://downloads.mesosphere.io/master/debian/8/mesos-0.26.0-py2.7-linux-x86_64.egg 

