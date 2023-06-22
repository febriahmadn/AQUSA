FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1

COPY . /aqusa
RUN apk update \
    # Postgresql dependencies
    && apk add make automake gcc g++ subversion python3-dev postgresql-client libpq-dev \
    # Pillow dependencies
    && apk add jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev musl-dev \
    # Java
    && apk add openjdk8-jre
RUN pip install --upgrade pip
RUN pip install typing
RUN pip install numpy==1.9.2
RUN pip install -r aqusa/requirements.txt
WORKDIR /aqusa