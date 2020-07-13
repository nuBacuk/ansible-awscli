FROM python:3-alpine
RUN apk add --no-cache --virtual .build-deps \
    gcc musl-dev libc-dev libffi-dev openssl-dev && \
    pip install setuptools ansible boto3 awscli && \
    apk del .build-deps gcc musl-dev libc-dev libffi-dev openssl-dev