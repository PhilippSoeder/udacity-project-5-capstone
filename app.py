from flask import Flask

app = Flask(__name__)
@app.route("/")
def index():
    return "Hello! This is Philipp Söders capstone project for the Udacity AWS Cloud DevOps Engineer Nanodegree Program."

if __name__ == "__main__":
    app.run(port=80)