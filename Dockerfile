FROM python:3.7

# Add packages
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y apt-utils

# Setup environment
ENV PYTHONIOENCODING utf-8
RUN export LANG=C.UTF-8
RUN export LANGUAGE=en_US:
RUN apt-get install -y fonts-ipafont
ENV TZ Asia/Tokyo

# Prepare for the project
RUN mkdir /python_app
ENV APP_ROOT /python_app
WORKDIR $APP_ROOT
COPY requirements.txt $APP_ROOT

# Set python env
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install selenium
RUN pip install -r $APP_ROOT/requirements.txt

# Python excution
# CMD ["python", "app.py"]
