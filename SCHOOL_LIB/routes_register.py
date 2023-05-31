from flask import Flask, render_template, request, make_response, flash, redirect, url_for, abort, jsonify
from flask_mysqldb import MySQL
from SCHOOL_LIB import app, db ## initially created by __init__.py, need to be used here
import json

@app.route('/register')
def register():
    return render_template('register.html')

@app.route('/process_registration', methods=['POST'])
def process_registration():
    username = request.form['username']
    password = request.form['password']
    name = request.form['name']
    surname = request.form['surname']
    email = request.form['email']
    postal_code = request.form['postal_code']
    phone = request.form['phone']
    age = request.form['age']
    sex = request.form['sex']
    class_ = request.form['class']
    user_type = request.form['user_type']
    school_id = request.form['school_id']

    print(f"Username: {username}")
    print(f"Password: {password}")
    print(f"Name: {name}")
    print(f"Surname: {surname}")
    print(f"Email: {email}")
    print(f"Postal Code: {postal_code}")
    print(f"Phone: {phone}")
    print(f"Age: {age}")
    print(f"Sex: {sex}")
    print(f"Class: {class_}")
    print(f"User Type: {user_type}")
    print(f"School ID: {school_id}")

    query = """INSERT INTO library_user (username, user_password, user_name, user_surname, user_email, operator_postal_code, phone, user_age, user_sex, user_class, user_type, able_status, school_id)
                VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', {})""".format(
                    username, password, name, surname, email, postal_code, phone, age, sex, class_, user_type, 'new', school_id)
    print(query)
    cur = db.connection.cursor()
    cur.execute(query)
    db.connection.commit()
    cur.close()

    
    return username

@app.route('/new_users')
def new_users():
    uid = request.cookies.get('id')
    if uid == None:
        return render_template('noaccess.html')
    uid = int(uid)
    if not is_operator(uid):
        return render_template('noaccess.html')

    query = "SELECT lu2.* FROM library_user lu1 JOIN library_user lu2 ON lu1.school_id = lu2.school_id WHERE lu1.user_id = {} AND lu2.user_id <> {} AND lu2.able_status = 'new'".format(uid, uid)
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()

    res = list(rv)
    print(res)

    return res

def is_operator(uid):
    # returns 1 if uid user is operator, 0 if not
    query = 'SELECT is_operator FROM library_user WHERE user_id = {};'.format(uid)
    print('check1')
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    print(rv[0][0])
    return int(rv[0][0])
    