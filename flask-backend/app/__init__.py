from flask import Flask
from flask_session import Session
from .models import db

def create_app():
    app = Flask(__name__)
    app.secret_key = 'jL7^#aG9@zP$1kF!eT2xQwR%3uBmN0dA'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///aidminton.db'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    app.config['SESSION_TYPE'] = 'filesystem' #added configuration for flask session 03/06
    app.config['SESSION_PERMANENT'] = False


    db.init_app(app)

    from .routes import main
    app.register_blueprint(main)

    with app.app_context():
        db.create_all()

    return app