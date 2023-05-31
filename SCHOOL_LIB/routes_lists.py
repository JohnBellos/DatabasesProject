from flask import Flask, render_template, request, make_response, flash, redirect, url_for, abort, jsonify
from flask_mysqldb import MySQL
from SCHOOL_LIB import app, db ## initially created by __init__.py, need to be used here
import json

@app.route("/schools")
def schools():
    table = 'school'
    query = "SELECT * FROM {};".format(table)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    cur.close()
    schools=list(rv)
    
    return render_template('schools.html', schools=schools)

@app.route("/users")
def students():
    table = 'library_user'
    query = "SELECT * FROM {};".format(table)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    return str(rv)

@app.route("/books")
def books():
    id = request.cookies.get('id')
    usr = db.connection.cursor()
    usr.execute("SELECT * FROM library_user WHERE user_id = {};".format(id))
    currentUser = usr.fetchall()
    currentUser = list(currentUser)
    print(currentUser)


    table = 'book'
    query = """SELECT b.*, GROUP_CONCAT(c.category_name) AS categories
            FROM book b
            JOIN has_category hc ON b.book_id = hc.book_id
            JOIN category c ON hc.category_id = c.category_id
            GROUP BY b.book_id;""".format(table)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    bookList = list(rv)
    
    
    query2 = "SELECT * FROM school WHERE school_id = {};".format(currentUser[0][14])
    scl = db.connection.cursor()
    scl.execute(query2)
    school = scl.fetchall()
    school = list(school)

    return render_template("bookList.html", books=bookList, user=currentUser, school = school)
    
@app.route("/books/<string:book_id>", methods=["GET"])
def bookView(book_id):
    query = """SELECT b.*, GROUP_CONCAT(c.category_name) AS categories
            FROM book b
            JOIN has_category hc ON b.book_id = hc.book_id
            JOIN category c ON hc.category_id = c.category_id
            WHERE b.book_id = {}
            GROUP BY b.book_id;""".format(book_id)
    print(query)
    print("check1")
    cur = db.connection.cursor()
    print("check111")
    cur.execute(query)
    print("check222")
    rv = cur.fetchall()
    print("check2")
    bookDetails = list(rv[0])
    print(bookDetails)
    return render_template("bookPage.html", bookDetails = bookDetails)
