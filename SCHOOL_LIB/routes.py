from flask import Flask, render_template, request, flash, redirect, url_for, abort
from flask_mysqldb import MySQL
from SCHOOL_LIB import app, db ## initially created by __init__.py, need to be used here

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
def users():
    table = 'school'
    query = "SELECT * FROM {};".format(table)
    
    cur = db.connection.cursor()
    print('This is the db:---!!!', query)
    cur.execute(query)
    rv = cur.fetchall()
    return str(rv)