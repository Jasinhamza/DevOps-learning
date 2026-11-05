# app.py

import os
from flask import Flask
import redis

app = Flask(__name__)
redis_host = os.getenv('REDIS_HOST', 'redis')
redis_port = int(os.getenv('REDIS_PORT', 6379))
r = redis.Redis(host=redis_host, port=redis_port)


@app.route('/count')
def arithmetic():
  count = r.incr('visit')
  return f'This page has been visited: {count} times.'


@app.route('/')
def message():
    return 'Welcome to my Multi container application'

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=5002)
