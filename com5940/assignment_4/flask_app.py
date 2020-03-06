############# Flask Modules Setup ##############

from flask import Flask, render_template, url_for, redirect, request, make_response, Response, jsonify
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin

import MySQLdb

######### Initialize Flask App ##########
app = Flask(__name__)

######### MySQL Database Setup ##########

#connection = pymysql.connect(host="localhost",
#                     user="root",
#                    passwd="root",
#                    db="assignment_4",
#                    charset='utf8mb4')

######### Login Manager Setup ##########

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'
app.config['SECRET_KEY'] = "lkkajdghdadkglajkgah"


@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

class User(UserMixin):
    def __init__(self,id):
        self.id = id

############ Web Page Routes Setup ###############

@app.route("/")
@login_required
def home():
    return render_template('home_4.html')

@app.route("/login")
def login():
    message = 'Please login in first.'
    return render_template('login.html', message=message)

@app.route('/query_auth')
def query_auth():
    username = request.args.get("username")
    password = request.args.get("password")
    if username == "1155131755@cuhk.edu.hk" and password == "fanyiting":
        login_user(User(1))
        message = "Dear " + username + ", welcome to yiting's pages. Your login has been granted."
        return make_response(message, 200, )
    else:
        message = 'Wrong password!'
        return make_response( message,401,{'WWW-Authenticate':'Basic realm="Login Required"'})

@app.route("/form_auth",methods=['POST'])
def form_auth():
    username = request.form['email']
    password = request.form['pwd']
    if username == "1155131755@cuhk.edu.hk" and password == "fanyiting":
        login_user(User(1))
        message = "Dear " + username + ", welcome to yiting's pages. Your login has been granted."
        return render_template('home_4.html', message=message)
    else:
        message = 'Wrong password!'
        return render_template('login.html',message=message)

@app.route('/album')
@login_required
def album():
    connection = MySQLdb.connect(host="FANYITING85.mysql.pythonanywhere-services.com",
                     user="FANYITING85",
                     passwd="fansql1234",
                     db="FANYITING85$default",
                     charset='utf8mb4')
    user = {"name":"FAN"}
    with connection.cursor() as cursor:
        sql = "SELECT * FROM sushi"
        cursor.execute(sql)
        result = cursor.fetchall()
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['名称'] = i[0]
        dict['img'] = i[1]
        dict['食物类型'] = i[2]
        dict['地点'] = i[3]
        dict['人均消费'] = i[4]
        dict['综合评分'] = i[5]
        dataset.append(dict.copy()) #markers.append(fld.copy())
    cursor.close()
    connection.close()
    return render_template('product.html',album_user=user, dataset=dataset)

@app.route('/logout/')
@login_required
def logout():
    logout_user()
    message = 'Thanks for logging out.'
    return render_template('login.html',message=message)

@app.errorhandler(500)
def internal_error(error):
    message = 'Wrong password!'
    return render_template('login.html',message=message),500

######### API Endpoints ##########

@app.route('/api_auth', methods=['POST'])
def api_auth():
    username = request.json['username']
    password = request.json['password']
    if username == "1155131755@cuhk.edu.hk" and password == "fanyiting":
        login_user(User(1))
        message = "Dear " + username + ", welcome to yiting's pages. Your login has been granted."
        return jsonify({'response':'ok!','message':message})
    else:
        message = 'Wrong password!'
        return jsonify({'response':'Invalid!','message':'Cannot authenticate.'})

@app.route('/api_album', methods=['POST'])
@login_required
def api_album():
    connection = MySQLdb.connect(host="FANYITING85.mysql.pythonanywhere-services.com",
                     user="FANYITING85",
                     passwd="fansql1234",
                     db="FANYITING85$default",
                     charset='utf8mb4')
    user = {"name":"FAN"}
    with connection.cursor() as cursor:
        sql = "SELECT * FROM sushi"
        cursor.execute(sql)
        result = cursor.fetchall()
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['名称'] = i[0]
        dict['img'] = i[1]
        dict['食物类型'] = i[2]
        dict['地点'] = i[3]
        dict['人均消费'] = i[4]
        dict['综合评分'] = i[5]
        dataset.append(dict.copy()) #markers.append(fld.copy())
    cursor.close()
    connection.close()
    return jsonify({'Album': dataset})

######### Run Flask Web App at Port 9002 ##########

if __name__ == '__main__':
    app.run(debug=True)