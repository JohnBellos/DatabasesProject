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


@app.route('/dashboard', methods=['POST'])
def dashboard():
    username = request.cookies.get('id')



    username = request.form['username']
    password = request.form['password']
    user = authentication(username, password)

    if user == []:
        return render_template("login.html")
    else:
        # user = [60, 'valeveque9', 'password', 'Valentine', 'Aleveque', 'valeveque9@arstechnica.com', '15', 'F', '9', 'professor', 2]
        webpage = render_template("dashboardProf.html", user = user)
        resp = make_response(webpage)
        resp.set_cookie('id', str(user[0]))
        return resp

def authentication(username, password):
    print("debug 1")
    # Perform any necessary processing or database operations here
    table = 'library_user'
    query = "SELECT * FROM {} WHERE username = '{}' AND user_password = '{}';".format(table, username, password)
    
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    user = [item for sublist in rv for item in sublist]
    return user

@app.route('/edit_info')
def edit_info():
    id = int(request.cookies.get('id'))
    query = "SELECT * FROM {} WHERE user_id = '{}';".format('library_user', id)
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    user = [item for sublist in rv for item in sublist]
    
    return render_template('edit_info.html', user = user)

@app.route('/save_info', methods = ['POST'])
def save_info():
    id = int(request.cookies.get('id'))
    username = request.form['username']
    password = request.form['password']
    name = request.form['name']
    surname = request.form['surname']
    email = request.form['email']
    uclass = request.form['class']
    name = request.form['name']

    # update database
    # show /dashboard
    query = "UPDATE library_user SET username = '{}', user_password = '{}', user_email = '{}', user_class = '{}' WHERE user_id = {};".format(username, password, email, uclass, id)
    print(query)
    cur = db.connection.cursor()
    cur.execute(query)
    db.connection.commit()
    cur.close()

    query = "SELECT * FROM {} WHERE user_id = '{}';".format('library_user', id)
    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    user = [item for sublist in rv for item in sublist]
    return render_template('dashboard.html', user = user)

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
    borrowCount = list(rv)
    print(borrowCount)
    return render_template("adminPage1.html", borrowData = borrowCount)




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

@app.route("/admin3")
def admin3():
    query = '''
    SELECT lu.user_name, lu.user_surname, COUNT(b.book_id) AS borrowed_books
    FROM library_user lu
    JOIN borrows br ON lu.user_id = br.user_id
    JOIN book b ON br.book_id = b.book_id
    WHERE lu.user_type = 'professor' AND lu.user_age < 40
    GROUP BY lu.user_id
    ORDER BY borrowed_books DESC;
    '''

    cur = db.connection.cursor()
    cur.execute(query)
    rv = cur.fetchall()
    print (rv)
    professor_books = [(row[0] + ' ' + row[1], row[2]) for row in rv]  # Extracting professor IDs and borrowed book counts
    
    return render_template("professors.html", professor_books=professor_books)


@app.route("/admin2", methods=["GET"])
def admin2():
    # Retrieve all categories from the database
    category_query = "SELECT DISTINCT category FROM book;"
    cur = db.connection.cursor()
    cur.execute(category_query)
    categories = [row[0] for row in cur.fetchall()]
    cur.close()

    # Check if a category is selected by the user
    chosen_category = request.args.get('category')

    if chosen_category:
        # Query to fetch the writers and professor names based on the chosen category
        query = '''
        SELECT b.writer, lu.user_name, lu.user_surname
        FROM book b
        JOIN borrows br ON b.book_id = br.book_id
        JOIN library_user lu ON br.user_id = lu.user_id
        WHERE b.category = '{}'
          AND lu.user_type = 'professor'
          AND br.date_of_borrow >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
        '''.format(chosen_category)

        cur = db.connection.cursor()
        cur.execute(query)
        rv = cur.fetchall()
        cur.close()

        writer_professors = [(row[0], row[1] + ' ' + row[2]) for row in rv]

        return render_template("category.html", writer_professors=writer_professors, categories=categories, chosen_category=chosen_category)
    else:
        return render_template("category.html", categories=categories)

@app.route("/admin7") #we need more data
def admin7():
    query1 = '''
    SELECT writer, COUNT(*) AS book_count
    FROM book
    GROUP BY writer
    ORDER BY book_count DESC
    LIMIT 1;'''

    cur = db.connection.cursor()
    cur.execute(query1)
    rv = cur.fetchall()
    print(rv)
    return list(rv)










   


