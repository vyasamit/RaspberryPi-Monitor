FROM python:3

MAINTAINER Amrit Rathie

WORKDIR /usr/src/app

ADD requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5001

CMD [ "python", "./app.py" ]
