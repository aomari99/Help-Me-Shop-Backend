FROM python:latest

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN apt-get update &&\
    apt-get install -y binutils libproj-dev gdal-bin
RUN mkdir /DJangoAPI

WORKDIR /DJangoAPI

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./DJangoAPI /DJangoAPI
