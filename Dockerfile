# syntax=docker/dockerfile:1

FROM python:3.9.2

WORKDIR python-docker

COPY requeriments.txt requeriments.txt

RUN pip3 install -r requeriments.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
