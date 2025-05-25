from flask import Blueprint, request, jsonify
from .models import db, User, InjuryLog, MedicalExpert

main = Blueprint('main', __name__)

# Users
@main.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    return jsonify([{'id': u.id, 'username': u.username, 'email': u.email} for u in users])

@main.route('/users/<int:user_id>', methods=['GET'])
def get_user(user_id):
    user = User.query.get_or_404(user_id)
    return jsonify({'id': user.id, 'username': user.username, 'email': user.email})

@main.route('/users', methods=['POST'])
def create_user():
    data = request.json
    user = User(username=data['username'], email=data['email'])
    db.session.add(user)
    db.session.commit()
    return jsonify({'id': user.id, 'username': user.username, 'email': user.email}), 201

# Injury Logs
@main.route('/injury_logs', methods=['GET'])
def get_injury_logs():
    logs = InjuryLog.query.all()
    return jsonify([
        {
            'id': log.id,
            'user_id': log.user_id,
            'injury_type': log.injury_type,
            'description': log.description,
            'date': log.date.isoformat() if log.date else None
        } for log in logs
    ])

@main.route('/injury_logs', methods=['POST'])
def add_injury_log():
    data = request.json
    log = InjuryLog(
        user_id=data['user_id'],
        injury_type=data['injury_type'],
        description=data.get('description', ''),
        date=data['date']
    )
    db.session.add(log)
    db.session.commit()
    return jsonify({'message': 'Injury log added', 'id': log.id}), 201

# Medical Experts
@main.route('/medical_experts', methods=['GET'])
def get_medical_experts():
    experts = MedicalExpert.query.all()
    return jsonify([
        {
            'id': expert.id,
            'name': expert.name,
            'specialty': expert.specialty,
            'contact': expert.contact
        } for expert in experts
    ])