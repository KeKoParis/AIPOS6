from flask import Flask, render_template, request

import db

app = Flask(__name__, template_folder="template")


@app.route('/', methods=['POST', 'GET'])
def main():
    if request.method == 'POST':
        song = request.form['song']
        print(song)
        song = song.lower()
        data = db.get_data(song)
        path_song = "../songs/" + data[0][0] + ".mp3"

        path_cover = "/static/pics/" + data[0][1].replace(" ", "") + ".png"

        return render_template("info.html", data=data, path_song=path_song, path_cover=path_cover)
    else:
        return render_template("main.html")


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5500)
