############# Flask Modules Setup ##############

from flask import Flask, render_template, url_for, redirect, request, make_response, Response, jsonify
from flask_login import LoginManager, login_user, current_user, logout_user, login_required, UserMixin
from flask_sqlalchemy import SQLAlchemy
#from datetime import datetime
import requests

############ Initialize Flask App ##############

app = Flask(__name__)
#CORS(app)

#### MySQL SQLAlchemy Object Relations Mapping #####

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:root@localhost/five'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://FANYITING85:fansql1234@FANYITING85.mysql.pythonanywhere-services.com/FANYITING85$default'
app.config['SECRET_KEY'] = "mysecret"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Restaurants(db.Model):
    __tablename__ = 'demo'
    rank = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(12))
    img = db.Column(db.String(233))
    food_type = db.Column(db.String(7))
    destination = db.Column(db.String(7))
    per = db.Column(db.String(6))
    score = db.Column(db.Float)
    # description = db.Column(db.Text)

############## Login Manager Setup ###############

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
def home():
    return render_template('home.html')

@app.route("/login")
def login():
    if current_user.is_authenticated:
        return redirect(url_for("list_album"))
    message = 'Please login in first.'
    return render_template('login.html', message=message)

@app.route("/form_auth",methods=['POST'])
def form_auth():
    username = request.form['email']
    password = request.form['pwd']
    if username == "1155131755@cuhk.edu.hk" and password == "112233":
        login_user(User(1))
        # message = "Dear " + username + ", welcome to Yiting's pages. Your login has been granted."
        return redirect(url_for("list_album"))
    else:
        message = 'Wrong password!'
        return render_template('login.html',message=message)

@app.route("/list_album")
@login_required
def list_album():
    dataset = []
    restaurant_list = Restaurants.query.all()
    for restaurant in restaurant_list:
        dataset.append({'rank': restaurant.rank, 'name': restaurant.name,'img': restaurant.img, 'food_type': restaurant.food_type,
                       'destination': restaurant.destination, 'per':restaurant.per,'score': restaurant.score})
    return render_template('list_album2.html', entries=dataset)

@app.route('/album')
def album():
    page_num = 1
    restaurants = Restaurants.query.paginate(per_page=9, page=page_num, error_out=True)
    return render_template('product_paging.html', restaurants=restaurants)

@app.route('/album/<int:page_num>')
def album_paging(page_num):
    restaurants = Restaurants.query. paginate(per_page=9, page=page_num, error_out=True)
    return render_template('product_paging.html', restaurants=restaurants)

@app.route("/add_restaurant",methods=['POST'])
@login_required
def add_restaurant():
    rank = request.form['rank']
    name = request.form['name']
    img = request.form['img']
    food_type = request.form['food_type']
    destination = request.form['destination']
    per = request.form['per']
    score = request.form['score']
    restaurant = Restaurants(rank=rank,name=name,img=img,food_type=food_type,destination=destination,per=per,score=score)
    db.session.add(restaurant)
    db.session.commit()
    dataset = []
    restaurant_list = Restaurants.query.all()
    for restaurant in restaurant_list:
        dataset.append({'rank': restaurant.rank, 'name': restaurant.name, 'img': restaurant.img, 'food_type': restaurant.food_type,
                       'destination': restaurant.destination, 'per':restaurant.per,'score': restaurant.score})
    return render_template('list_album2.html', entries=dataset)

@app.route("/update_restaurant",methods=['POST','PUT'])
@login_required
def update_restaurant():
    record_id = request.form['record_id']
    restaurant = Restaurants.query.filter_by(rank=record_id).first()
    restaurant.name = request.form['name']
    restaurant.img = request.form['img']
    restaurant.food_type = request.form['food_type']
    restaurant.destination = request.form['destination']
    restaurant.per = request.form['per']
    restaurant.score = request.form['score']
    db.session.commit()
    dataset = []
    restaurant_list = Restaurants.query.all()
    for restaurant in restaurant_list:
        dataset.append({'rank': restaurant.rank, 'name': restaurant.name, 'img': restaurant.img, 'food_type': restaurant.food_type,
                       'destination': restaurant.destination, 'per':restaurant.per,'score': restaurant.score})
    return render_template('list_album2.html', entries=dataset)

@app.route("/delete_restaurant",methods=['POST','DELETE'])
@login_required
def delete_restaurant():
    record_id = request.form['record_id']
    restaurant = Restaurants.query.filter_by(rank=record_id).first()
    db.session.delete(restaurant)
    db.session.commit()
    dataset = []
    restaurant_list= Restaurants.query.all()
    for restaurant in restaurant_list:
        dataset.append({'rank': restaurant.rank, 'name': restaurant.name, 'img': restaurant.img, 'food_type': restaurant.food_type,
                       'destination': restaurant.destination, 'per':restaurant.per,'score': restaurant.score})
    return render_template('list_album2.html', entries=dataset)


@app.route('/api')
def api():
    result = db.engine.execute('select * from products')
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['productID'] = i[0]
        dict['productCode'] = i[1]
        dict['name'] = i[2]
        dict['quantity'] = i[3]
        dict['price'] = i[4]
        dict['supplierID'] = i[5]
        # print(i)
        # print(dict)
        dataset.append(dict.copy()) #markers.append(fld.copy())
    return jsonify({'Album': dataset})

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

######### Run Flask Web App at Port 9002 ##########

if __name__ == '__main__':
    app.run(debug = True)