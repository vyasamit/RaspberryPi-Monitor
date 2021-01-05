FROM python:3

MAINTAINER Amrit Rathie

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_ENV production
EXPOSE 5001

CMD [ "python", "./app.py" ]