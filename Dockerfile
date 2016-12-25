FROM python

RUN apt-get install git
RUN pip install pika

RUN git clone https://github.com/michelelt/processor
#CMD python processor/consumer.py
CMD ["python processor/consumer.py", "-D",  "FOREGROUND"]
##
