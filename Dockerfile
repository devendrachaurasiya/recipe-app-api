FROM python:3.7-alpine
MAINTAINER  LONDONAPPDEVELOPER
ENV PYTHONUNBUFFERED 1
COPY ./requirnments.txt /requirnments.txt
RUN pip install -r /requirnments.txt
RUN mkdir /app 
WORKDIR /app
COPY ./app /app
RUN adduser -D user
USER user