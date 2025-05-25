from flask import Blueprint, request, jsonify, g
from extensions import db, login_manager
from models import User, UserSettings
from werkzeug.security import check_password_hash
from flask_login import login_user, logout_user
import jwt
import os
from datetime import datetime, timedelta
from functools import wraps
from flask import current_app as app

bp = Blueprint('auth', __name__)

def generate_token(user):
    payload = {
        'user_id': user.id,
        'exp': datetime.utcnow() + timedelta(days=1)
    }
    return jwt.encode(payload, app.config['SECRET_KEY'], algorithm='HS256')

def jwt_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        auth_header = request.headers.get('Authorization', None)
        if not auth_header or not auth_header.startswith('Bearer '):
            return jsonify({'error': 'Missing or invalid Authorization header'}), 401
        token = auth_header.split(' ')[1]
        try:
            payload = jwt.decode(token, app.config['SECRET_KEY'], algorithms=['HS256'])
            user = User.query.get(payload['user_id'])
            if not user:
                return jsonify({'error': 'User not found'}), 401
            g.current_user = user
        except Exception as e:
            return jsonify({'error': 'Invalid or expired token'}), 401
        return f(*args, **kwargs)
    return decorated_function

@bp.route('/api/signup', methods=['POST'])
def signup():
    data = request.get_json()
    if not all(k in data for k in ['username', 'email', 'password', 'nickname', 'phone_number']):
        return jsonify({'error': 'Missing required fields'}), 400
    if User.query.filter_by(username=data['username']).first():
        return jsonify({'error': 'Username already exists'}), 400
    if User.query.filter_by(email=data['email']).first():
        return jsonify({'error': 'Email already exists'}), 400
    user = User(
        username=data['username'],
        email=data['email'],
        nickname=data['nickname'],
        phone_number=data['phone_number']
    )
    user.set_password(data['password'])
    settings = UserSettings(user=user)
    try:
        db.session.add(user)
        db.session.add(settings)
        db.session.commit()
        token = generate_token(user)
        return jsonify({
            'token': token,
            'user': {
                'id': user.id,
                'username': user.username,
                'email': user.email,
                'nickname': user.nickname,
                'phone_number': user.phone_number
            }
        }), 201
    except Exception as e:
        db.session.rollback()
        return jsonify({'error': str(e)}), 500

@bp.route('/api/login', methods=['POST'])
def login():
    data = request.get_json()
    user = User.query.filter_by(username=data.get('username')).first()
    if user and user.check_password(data.get('password')):
        login_user(user)
        token = generate_token(user)
        return jsonify({
            'token': token,
            'user': {
                'id': user.id,
                'username': user.username,
                'email': user.email,
                'nickname': user.nickname,
                'phone_number': user.phone_number
            }
        })
    return jsonify({'error': 'Invalid username or password'}), 401

@bp.route('/api/logout', methods=['POST'])
def logout():
    logout_user()
    return jsonify({'message': 'Logged out successfully'})

@bp.route('/api/profile', methods=['GET'])
@jwt_required
def get_profile():
    user = g.current_user
    return jsonify({
        'id': user.id,
        'username': user.username,
        'email': user.email,
        'nickname': user.nickname,
        'phone_number': user.phone_number
    })

@bp.route('/api/profile', methods=['POST'])
@jwt_required
def update_profile():
    user = g.current_user
    data = request.get_json()
    if 'email' in data:
        user.email = data['email']
    if 'nickname' in data:
        user.nickname = data['nickname']
    if 'phone_number' in data:
        user.phone_number = data['phone_number']
    db.session.commit()
    return jsonify({'message': 'Profile updated successfully'}) 