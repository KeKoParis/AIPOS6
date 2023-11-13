import sqlite3


def get_data(song):
    db = None
    songs_data = list()
    album_data = list()
    members_data = list()
    try:
        db = sqlite3.connect('db/songs.db')
        cursor = db.cursor()

        select_query = "SELECT * from songs where name=?"
        cursor.execute(select_query, (song,))
        songs_data = cursor.fetchall()

        select_query = "select * from albums where id=?"
        cursor.execute(select_query, (songs_data[0][1],))
        album_data += cursor.fetchall()

        members = album_data[0][3]
        group_members = members.split(', ')

        for i in group_members:
            select_query = "select * from group_members where name=?"
            cursor.execute(select_query, (i,))
            members_data += cursor.fetchall()

        db.close()
        print("Connection closed")
        return songs_data, album_data, members_data

    except sqlite3.Error as err:
        print(f'Error: "{err}"')

    finally:
        if db:
            db.close()
            print("Connection closed")


def update_data(song_name: str, description: str):
    db = None
    try:
        db = sqlite3.connect('db/songs.db')
        cursor = db.cursor()
        print(description)
        query = f'''update songs
                    set description = ?
                    where name  = ? '''

        cursor.execute(query, (description, song_name,))
        db.commit()

    except sqlite3.Error as err:
        print(f'Error: {err}')
    finally:
        if db:
            db.close()


def delete_data(song_name: str):
    db = None
    try:
        db = sqlite3.connect('db/songs.db')
        cursor = db.cursor()

        query = f'''delete from songs
                    where name = ?'''
        cursor.execute(query, (song_name,))
        db.commit()
    except sqlite3.Error as err:
        print(f'Error: {err}')
    finally:
        if db:
            db.close()
