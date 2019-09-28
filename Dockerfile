FROM python:3.7.4-alpine

ENV SERVER_PORT 8888

RUN apk update && apk upgrade --no-cache

RUN apk --no-cache -U add wget

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python3 ./get-pip.py

RUN wssh --port=$SERVER_PORT

ENTRYPOINT ["/tmp"]
