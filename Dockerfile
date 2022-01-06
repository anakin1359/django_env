FROM python:3.7

ENV PYTHONUNBUFFERED 1

# Prepare for the project
RUN mkdir /pyapp
RUN mkdir /pyapp
COPY requirements.txt /pyapp/

# Set python env
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install selenium
RUN pip install -r requirements.txt

COPY . /pyapp/