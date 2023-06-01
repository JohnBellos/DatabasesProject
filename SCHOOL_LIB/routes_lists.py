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
    if id != 'admin':
        print(id)
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
    ####
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    bookList = list(rv)
    # print(bookList)
    # booklist has this form
    # book_id
    # ISBN
    # title
    # publisher
    # writer
    # num_of_pages
    # summary
    # num_of_copies
    # language_of_book
    # categories
    
    query2 = "SELECT * FROM school WHERE school_id = {};".format(currentUser[0][14])
    scl = db.connection.cursor()
    scl.execute(query2)
    school = scl.fetchall()
    school = list(school)

    query3 = '''
                SELECT b.book_id, b.ISBN, b.title, b.publisher, b.writer, b.num_of_pages, b.summary, scb.number_of_copies, b.language_of_book, GROUP_CONCAT(c.category_name) AS categories
                FROM school AS s
                JOIN library_user AS lu ON lu.school_id = s.school_id
                JOIN contains AS scb ON s.school_id = scb.school_id
                JOIN book AS b ON scb.book_id = b.book_id
                
                JOIN has_category hc ON b.book_id = hc.book_id
                JOIN category c ON hc.category_id = c.category_id
                WHERE lu.user_id = {}
                GROUP BY b.book_id;
            '''.format(id)
    cur = db.connection.cursor()
    cur.execute(query3)
    rv = cur.fetchall()
    print('Hello Barbie')
    rv = list(rv)

    if currentUser[0][12] == 1:
        print('mamamou')
        return render_template("bookListOP.html", books=rv, user=currentUser, school = school)
    
    return render_template("bookList.html", books=rv, user=currentUser, school = school)

@app.route("/books/borrowed")
def booksBorrowed():
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

    query3 = """SELECT b.*
                      FROM book b
                      JOIN borrows bor ON b.book_id = bor.book_id
                      WHERE user_id = {};
                      """.format(currentUser[0][0])

    borrows_cur = db.connection.cursor()
    borrows_cur.execute(query3)
    borrowed_books = borrows_cur.fetchall()
    borrowed_books = list(borrowed_books)
    print(borrowed_books)


    return render_template("bookList.html", books=borrowed_books, user=currentUser, school = school)
    
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

@app.route("/books/<string:book_id>/borrow", methods=["POST"])
def bookBorrow(book_id):
    id = request.cookies.get('id')

    # usr = db.connection.cursor()
    # usr.execute("SELECT * FROM library_user WHERE user_id = {};".format(id))
    # currentUser = usr.fetchall()
    # currentUser = list(currentUser)
    # print(currentUser)

    query = '''INSERT INTO borrows(user_id, book_id, date_of_borrow) VALUES ({}, {}, CURDATE())'''.format(id, book_id)

    br = db.connection.cursor()
    br.execute(query)
    db.connection.commit()
    br.close()
    print(query)
    return '1'

@app.route("/books/books/<string:book_id>", methods=["GET"])  #View Borrowed Book Details
def bookView2(book_id):
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

