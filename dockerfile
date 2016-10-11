#######################
#Dockerfile for python
#######################
FROM ububtu

#Author
MAINTainer mc

#installation of pika 
RUN apt-get update
RUN apt-get install python-pip
RUN install pika

#donwload scrpits
RUN cd ~
RUN git clone https://github.com/michelelt/washomatic/
RUN cd whashomatic
RUN python ./producer.py
RUN python ./consumer.py
RUN python ./parser.py



