FROM python:3.7-alpine
LABEL org.opencontainers.image.authors="manojjha491@live.com"

ENV PYTHONNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app/app
COPY ./app /app/app

RUN adduser -D user
USER user
