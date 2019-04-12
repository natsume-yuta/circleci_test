FROM amazonlinux:2017.12.0.20180222

ENV LANG=en_US.UTF-8

WORKDIR /workdir
COPY requirements.txt ./
RUN yum install -y python3-pip gcc
ENTRYPOINT ["python3", "-m", "pip", "install", "-r", "requirements.txt", "-t", "."]
