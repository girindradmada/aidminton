from flask import Flask
from flask_cors import CORS
from dotenv import load_dotenv
import os
from extensions import db, login_manager
from auth import bp as auth_bp
from settings import bp as settings_bp

def create_app():
    load_dotenv()
    app = Flask(__name__)
    CORS(app)
    app.config['SECRET_KEY'] = os.getenv('FLASK_SECRET_KEY')
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///aidminton.db'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    db.init_app(app)
    login_manager.init_app(app)
    app.register_blueprint(auth_bp)
    app.register_blueprint(settings_bp)
    with app.app_context():
        db.create_all()
    return app

if __name__ == '__main__':
    app = create_app()
    with app.app_context():
        # from models import MedicalExpert DONT USE THIS, USE prepopulate.py INSTEAD
        # if MedicalExpert.query.count() == 0:
        #     experts = [
        #         MedicalExpert(
        #             name='Dr.Asep Hidayat, Sp.JP',
        #             specialty='Cardiologist',
        #             phone='',
        #             email='',
        #             photo_url='assets/icons/asep.png'
        #         ),
        #         MedicalExpert(
        #             name='Dr.Vincent Dimanasye, Sp.OT',
        #             specialty='Orthopedist',
        #             phone='',
        #             email='',
        #             photo_url='assets/icons/vincent.png'
        #         ),
        #         MedicalExpert(
        #             name='Dr.Floryn Noflicker, Sp.PD-KHOM',
        #             specialty='Hermatologist',
        #             phone='',
        #             email='',
        #             photo_url='assets/icons/floryn.png'
        #         ),
        #     ]
        #     for expert in experts:
        #         db.session.add(expert)
        #     db.session.commit()
        app.run(debug=True, port=5000)

