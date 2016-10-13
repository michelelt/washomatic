
FROM python

RUN apt-get update
RUN apt-get install git

RUN pip install pika

RUN git clone https://github.com/michelelt/processor
RUN python processor/consumer.py



