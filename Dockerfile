FROM debian

MAINTAINER delta24 <viyat001@gmail.com>

RUN apt-get update && apt-get install -y \
        git \
        gcc \
        python-dev \
        python-pip


RUN pip install supervisor \
                flask \
                dataset



RUN git clone https://github.com/balidani/tinyctf-platform.git

RUN cd tinyctf-platform &&  \
        python task_import.py
