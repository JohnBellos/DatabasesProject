from flask import Flask, render_template, request, make_response, flash, redirect, url_for, abort, jsonify
from flask_mysqldb import MySQL
from SCHOOL_LIB import app, db ## initially created by __init__.py, need to be used here
import json

if __name__ == '__main__':
    app.run()

@app.route("/")
def index():
    try:
        ## create connection to database
        cur = db.connection.cursor()
        ## execute query
        
        return render_template("index.html", pageTitle = "SCHOOL_LIB")
    except Exception as e:
        print(e)
        return render_template("index.html", pageTitle = "SCHOOL_LIB")
    
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
    return render_template("bookList.html", books=bookList, user=currentUser)
    
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

@app.route("/login")
def login():
    return render_template("login.html")

@app.route('/authenticate', methods=['POST'])
def authenticate():
    username = request.form['username']
    password = request.form['password']
    user = authentication(username, password)
    if user == []:
        print("I am nobody")
        return render_template("login.html")
    

@app.route('/dashboard', methods=['POST', 'GET'])
def dashboard():
    print('start debug')
    if request.method == 'GET':
        print('get')
        uid = request.cookies.get('id')
        if uid == 'admin':
            query = "SELECT * FROM administrator WHERE administrator_id = 1;"
        else:
            query = "SELECT * FROM library_user WHERE user_id = {};".format(uid)
        print(query)
        cur = db.connection.cursor()
        cur.execute(query)
        user = cur.fetchall()
        print(user)
        user = list(user[0])
        if user == []: # authentication failed
            print("I am nobody")
            return render_template("login.html") 
        print('check1')
        return show_dashboard(user)
    
    elif request.method == 'POST':
        print('post')
        username = request.form['username']
        password = request.form['password']
        user = authentication(username, password)
        if user == []: # authentication failed
            print("I am nobody")
            return render_template("login.html")
        else: # authentication successful
            return show_dashboard_with_cookie_creation(user)

def show_dashboard(user):
    print('check boobob')
    print(user)
    if len(user) == 10:
        # it is the admin
        print('check21')
        return render_template("dashboardAdmin.html", user = user)
    elif user[11] == 'professor':
        query = 'SELECT is_operator FROM library_user WHERE user_id = {}'.format(user[0])
        cur = db.connection.cursor()
        cur.execute(query)
        rv = cur.fetchall()
        isOperator = rv[0][0]  # 1 if Operator - 0 if not Operator
        if isOperator == 1:
            # Operator
            return render_template("dashboardOp.html", user = user)
        else:
            # Teacher but not operator
            return render_template("dashboardProf.html", user = user)
    if user[11] == 'student':
        print("I am a Student")
        return render_template("dashboardStd.html", user = user)


def show_dashboard_with_cookie_creation(user):
    print("User(or not) identified")
    print(user)
    
    # user = [60, 'valeveque9', 'RpHeZAR', 'Valentine', 'Aleveque', 'valeveque9@arstechnica.com', '15', 'F', '9', 'professor', 2]
    if len(user) == 10:
        print("I am an admin")
        # it is the admin
        webpage = render_template("dashboardAdmin.html", user = user)
        resp = make_response(webpage)
        resp.set_cookie('id', 'admin')
        return resp
    if user[11] == 'professor':
        print("I am a Professor")
        query = '''SELECT is_operator
                FROM library_user
                WHERE user_name = '{}' AND user_surname = '{}';'''.format(user[3], user[4])
    
        cur = db.connection.cursor()
        cur.execute(query)
        rv = cur.fetchall()
        
        print(rv)
        isOperator = rv[0][0]  # 1 if Operator - 0 if not Operator
        if isOperator == 1:
            print("I am a Professor and an Operator")
            webpage = render_template("dashboardOp.html", user = user)
            resp = make_response(webpage)
            resp.set_cookie('id', str(user[0]))
            return resp
        else:
            webpage = render_template("dashboardProf.html", user = user)
            resp = make_response(webpage)
            resp.set_cookie('id', str(user[0]))
            return resp
    # user = [1, 'jlefleming0', 'aovGiL', 'Jonah', 'Le Fleming', 'jlefleming0@usnews.com', '7', 'M', '12', 'student', 2]
    if user[11] == 'student':
        print("I am a Student")
        webpage = render_template("dashboardStd.html", user = user)
        resp = make_response(webpage)
        resp.set_cookie('id', str(user[0]))
        return resp
    return "Invalid User Type"


def authentication(username, password):
    # Perform any necessary processing or database operations here
    table = 'library_user'
    query = "SELECT * FROM {} WHERE username = '{}' AND user_password = '{}';".format(table, username, password)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    user = [item for sublist in rv for item in sublist]
    
    if user == []: # check if user is admin
        
        table = 'administrator'
        query = "SELECT * FROM {} WHERE administrator_username = '{}' AND administrator_password = '{}';".format(table, username, password)
        cur = db.connection.cursor()
        cur.execute(query)
        rv = cur.fetchall()
        
        
        user = [item for sublist in rv for item in sublist]
       
    return user
