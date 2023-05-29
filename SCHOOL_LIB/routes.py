from flask import Flask, render_template, request, flash, redirect, url_for, abort, jsonify
from flask_mysqldb import MySQL
from SCHOOL_LIB import app, db ## initially created by __init__.py, need to be used here
import json
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

if __name__ == '__main__':
    app.run()


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
    table = 'book'
    query = "SELECT * FROM {};".format(table)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    bookList = list(rv)
    return render_template("userPage.html", books=bookList)
    print(bookList)
    
    # rv = rv[2:-2]
    #bookList = rv.split("), (")
    # print(bookList)
    #bookList = [data.split(", ") for data in bookList]
    
    # books = json.loads(str(rv))
    # print(books)
    return render_template("userPage.html", books=bookList)

@app.route("/books/<string:ISBN>", methods=["GET"])
def bookView(ISBN):
    
    cur = db.connection.cursor()
    cur.execute("SELECT * FROM book WHERE ISBN = %s", (ISBN,))
    rv = cur.fetchone()
    bookDetails = list(rv)
    return render_template("bookPage.html", bookDetails = bookDetails)

@app.route("/page")
def page():
    return render_template("cursed.html")


@app.route("/login")
def login():
    return render_template("login.html")





@app.route('/process_data', methods=['POST'])
def process_data():
    username = request.form['username']
    password = request.form['password']

    # Perform any necessary processing or database operations here
    table = 'library_user'
    query = "SELECT * FROM {} WHERE username = '{}' AND user_password = '{}';".format(table, username, password)
    print(query)
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    return render_template("dashboard.html")
    response = {'message': 'Data received successfully'}
    return redirect()

@app.route('/dashboard')
def dashboard():
    # Render the dashboard template
    return render_template('dashboard.html')

@app.route('/admin1')
def admin1():
    month = 6
    year = 2023
    query = """
        SELECT s.school_name, COUNT(*) AS borrow_count
        FROM borrows b
        JOIN library_user lu ON b.user_id = lu.user_id
        JOIN school s ON lu.school_id = s.school_id
        WHERE YEAR(b.date_of_borrow) = {} AND MONTH(b.date_of_borrow) = {}
        GROUP BY s.school_name;
    """.format(year, month)
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    return list(rv)

@app.route('/admin2')
def admin2():
    pass

if __name__ == '__main__':
    app.run()


@app.route("/admin4")
def available_admin4():
    query = '''
    SELECT DISTINCT b.writer
    FROM book b
    LEFT JOIN borrows br ON b.book_id = br.book_id
    WHERE br.book_id IS NULL;
    '''

    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
   
    return render_template('writers.html', writers=rv)

   



