from flask import Flask, render_template, request

import db

app = Flask(__name__, template_folder="template")


@app.route('/', methods=['POST', 'GET'])
def main():
    if request.method == 'POST':
        song = request.form['first-name']
        data = db.get_data(song)
        return render_template("info.html")
    else:
        return render_template("main.html")


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5500)
