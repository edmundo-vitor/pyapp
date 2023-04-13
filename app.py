import flask

app = flask.Flask(__name__)


@app.route('/', methods=['GET'])
def home():
    return "<h1>Jenkins ECR ECS deploy</h1>"


if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0")
