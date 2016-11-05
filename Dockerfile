FROM ubuntu:16.04


RUN apt-get update

RUN apt-get install -y python-pip build-essential python-dev libffi-dev \
                       gfortran libssl-dev python-software-properties \
                       software-properties-common

RUN pip install -U pip
RUN pip install -U setuptools

RUN pip install https://api.github.com/repos/dimonb/yandex-tank/tarball/master

RUN add-apt-repository ppa:yandex-load/main && apt-get update
RUN apt-get install phantom phantom-ssl

WORKDIR /tank
