FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-virtualenv

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]