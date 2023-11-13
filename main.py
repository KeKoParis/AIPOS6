from IPython.display import HTML
from flask import Flask, render_template, request, redirect

import db

app = Flask(__name__, template_folder="template")


@app.route('/create', methods=['POST', 'GET'])
def create():
    if request.method == 'POST':
        artist = request.form['artist']
        bio = request.form['bio']
        concert = eval(request.form['concert'])
        session = eval(request.form['session'])
        db.create_artist(artist, concert, session, bio)
    return redirect('/')


@app.route('/delete_song', methods=['POST', 'GET'])
def delete():
    song_name = request.form['song_name']
    print(song_name)
    db.delete_data(song_name)
    return redirect('/')


@app.route('/update.html', methods=['POST', 'GET'])
def update():
    try:
        if request.method == 'POST':
            song_name = request.form['song_name']
            description = request.form['description']
            db.update_data(song_name, description)

        return redirect('/')
    except KeyError:
        return render_template('update.html')


@app.route('/button-update', methods=['POST'])
def upd_button():
    return update()


@app.route('/', methods=['POST', 'GET'])
def main():
    if request.method == 'POST':
        song = request.form['song']
        print(song)
        song = song.rstrip()
        try:
            song_data, album_data, members = db.get_data(song)

            path_song = "../songs/" + ((song_data[0][2].lower().replace(" ", "_")).replace("?", "")).replace("'",
                                                                                                             "") + ".mp3"

            path_cover = "/static/pics/" + str(album_data[0][0]) + ".png"

            members_data = form_members_data(members)

            return render_template('info.html', song_data=song_data, album_data=album_data, members=members_data,
                                   path_song=path_song, path_cover=path_cover)
        except IndexError:
            return render_template("main.html")
    else:
        return render_template("main.html")


def form_members_data(members: list):
    result = ""

    for i in members:
        result += "<b>" + i[1] + "</b><br>" + i[4] + "<br>"

    return HTML(result)


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=4444)
