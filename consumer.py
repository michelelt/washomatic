#!/usr/bin/env python
import pika

credentials = pika.PlainCredentials('root', 'washomatic')
parameters = pika.ConnectionParameters('52.210.163.71',
                                       5672,
                                       '/',
                                       credentials)
connection = pika.BlockingConnection(parameters)
channel = connection.channel()

def callback(ch, method, properties, body):
	print(" [x] Received %r" % body)
	out_file = open("log.txt","a")
	out_file.write(body)
	out_file.close()


channel.basic_consume(callback,
                      queue='coda',
                      no_ack=True)

print(' [*] Waiting for messages. To exit press CTRL+C')
channel.start_consuming()
