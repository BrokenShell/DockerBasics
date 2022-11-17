FROM amazonlinux

ENV PYTHONUNBUFFERED=1

RUN yum update -y
RUN yum upgrade -y
RUN yum groupinstall "Development Tools" -y
RUN yum install python3-devel -y
RUN python3 -m pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN python3 -m pip install -r requirements.txt

CMD bin/bash
