# app.py

from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host='redis', port=6379)


@app.route('/count')
def arithmetic():
  count = r.incr('visit')
  return f'This page has been visited: {count} times.'


@app.route('/')
def message():
    return 'Welcome to my Multi container application'

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=5002)
