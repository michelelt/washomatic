
FROM python

RUN apt-get update
RUN pip install pika

RUN git clone https://github.com/michelelt/washomatic/
CMD python ./consumer.py



