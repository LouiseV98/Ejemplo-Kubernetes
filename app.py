from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/v1/hello', methods=['GET'])
def hello():
    return jsonify(message="Hello, Worlddddddd!")

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)