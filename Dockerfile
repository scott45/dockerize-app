FROM ubuntu:latest

MAINTAINER Scotty B "businge.scott@andela.com"

RUN apt-get update -y 
RUN apt-get install -y python-pip python-dev build-essential

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install Flask
RUN pip freeze > requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
