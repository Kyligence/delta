FROM python:3.7-stretch

RUN apt-get update && apt-get -y install openjdk-8-jdk

RUN pip install pyspark==3.0.1

COPY .  /usr/src/delta

WORKDIR /usr/src/delta

CMD ["python", "run-tests.py"]
