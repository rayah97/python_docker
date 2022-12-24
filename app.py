import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    env = os.environ.get('FLASK_ENV', 'development')
    return f'Hello, Docker! Running in {env} mode.'

if __name__ == '__main__':
    app.run()
