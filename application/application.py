from flask import Flask
app = Flask(__name__)

@app.route("/")
def application():
    return "CI/CD Demo 1"