from flask import Flask
from flask_mysqldb import MySQL

app = Flask(__name__)

app.config["MYSQL_USER"] = 'root'
app.config["MYSQL_PASSWORD"] = ''
app.config["MYSQL_DB"] = 'library'
app.config["MYSQL_HOST"] = 'localhost'
app.config["SECRET_KEY"] = 'key' ## secret key for sessions (signed cookies). Flask uses it to protect the contents of the user session against tampering.
app.config["WTF_CSRF_SECRET_KEY"] = 'key' ## token for csrf protection of forms.
## secret keys can be generated by secrets.token_hex()

db = MySQL(app)

from SCHOOL_LIB import routes
from SCHOOL_LIB import routes_admin
from SCHOOL_LIB import routes_register
from SCHOOL_LIB import routes_edit_info
