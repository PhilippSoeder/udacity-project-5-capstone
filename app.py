from flask import Flask

app = Flask(__name__)
@app.route("/")
def index():
    return "Hello! This is Philipp Söder's capstone project for the Udacity AWS Cloud DevOps Engineer Nanodegree Program."