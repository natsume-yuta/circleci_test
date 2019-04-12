FROM amazonlinux:2017.12.0.20180222

ENV PIPENV_VERSION=11.5.2 \
    LANG=en_US.UTF-8

WORKDIR /workdir
COPY Pipfile* ./
RUN yum install -y python36-pip gcc \
      && pip install -U setuptools \
      && pip install pipenv==11.10.0

ENTRYPOINT ["python", "-m", "pip", "install", "-r", "requirements.txt", "-t", "."]
