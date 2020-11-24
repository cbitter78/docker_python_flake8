FROM python:3

RUN pip install flake8

WORKDIR /flake8
VOLUME ["/flake8"]

CMD ["flake8", "--append-config=flake8.ini"]