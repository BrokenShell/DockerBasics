FROM amazonlinux

ENV PYTHONUNBUFFERED=1

RUN yum update -y
RUN yum upgrade -y
RUN yum install nano -y
RUN yum groupinstall "Development Tools" -y
RUN yum install python3-devel -y

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install -r requirements.txt

CMD bin/bash
