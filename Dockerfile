FROM python:3.6-slim

# set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# add requirements (to leverage Docker cache)
ADD ./requirements.txt /usr/src/app/requirements.txt

# install requirements
RUN pip3 install -r requirements.txt

# add app
ADD . /usr/src/app

# run server
CMD python3 manage.py runserver -h 0.0.0.0

