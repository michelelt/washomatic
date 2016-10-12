
FROM python

RUN apt-get update
RUN pip install pika

RUN git clone https://github.com/michelelt/washomatic/
RUN python ./producer.py
RUN python ./consumer.py
RUN python ./parser.py



