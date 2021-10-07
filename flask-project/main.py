from flask import Flask

app = Flask(__name__)

@app.route("/images")
def hello_world():
    return "<p>Hello, World!</p>"