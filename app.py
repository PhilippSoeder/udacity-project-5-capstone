from flask import Flask

app = Flask(__name__)
@app.route("/")
def index():
    return "Hello! This is Philipp Söders capstone project for the Udacity AWS Cloud DevOps Engineer Nanodegree Program. Updated app."

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)