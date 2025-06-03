from flask import Blueprint, request, jsonify, session
from .models import db, User, InjuryLog, MedicalExpert, CommonInjuries, EmergencyContact

main = Blueprint('main', __name__)

# Users
@main.route('/users', methods=['GET'])
def get_users():
    users = User.query.all()
    session['user_email'] = users.email
    return jsonify([{'username': u.username, 'email': u.email, 'password':u.password} for u in users]) #removed id and added password

# @main.route('/users/<int:user_id>', methods=['GET']) 
# def get_user(user_id):
#     user = User.query.get_or_404(user_id)
#     return jsonify({'id': user.id, 'username': user.username, 'email': user.email})

@main.route('/users', methods=['POST']) # removed id and added password 03/06
def create_user():
    data = request.json
    user = User(username=data['username'], email=data['email'], password=data['password'])
    db.session.add(user)
    db.session.commit()
    return jsonify({'username': user.username, 'email': user.email, 'password': user.password}), 201

@main.route('/logout', methods=['POST']) #added logout
def logout():
    session.pop('user_email', None)
    return jsonify({'message': 'Logged out'})

# Injury Logs
@main.route('/injury_logs', methods=['GET']) # added severity and changed user_id to user_email 03/06
def get_injury_logs():
    logs = InjuryLog.query.all()
    return jsonify([
        {
            'id': log.id,
            'user_email': log.user_email,
            'injury_type': log.injury_type,
            'description': log.description,
            'date': log.date.isoformat() if log.date else None,
            'severity': log.severity
        } for log in logs
    ])

@main.route('/injury_logs', methods=['POST'])
def add_injury_log():
    data = request.json

    # required fields
    required_fields = ['user_email', 'injury_type', 'severity', 'date'] # i only added the fields that have nullable=false in models.py
    for field in required_fields:
        if field not in data:
            return jsonify({'error': f'Missing Field: {field}'}), 400

    if 'user_email' not in session:
        return jsonify({'error': 'User not logged in'}), 401

    log = InjuryLog(
        user_email=session['user_email'],
        injury_type=data['injury_type'],
        description=data('description', ''),
        date=data['date'],
        severity=data['severity']
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

# Common Injury
@main.route('/common_injuries', methods=['GET'])
def get_common_injuries():
    injuries = CommonInjuries.query.all()
    result = []
    for injury in injuries:
        result.append({
            'id': injury.id,
            'injuryName': injury.injuryName,
            'injuryPhoto': injury.injuryPhoto,
            'injuryDescription': injury.injuryDescription,
            'injuryCauses': injury.injuryCauses,
            'injurySymptoms': injury.injurySymptoms,
            'injuryTreatment': injury.injuryTreatment,
        })
    return jsonify(result), 200

# Emergency Contact
@main.route('/emergency_contacts', methods=['GET'])
def get_emergency_contacts():
    contacts = EmergencyContact.query.all()
    result = []
    for contact in contacts:
        result.append({
            'id': contact.id,
            'name': contact.name,
            'phoneNumber': contact.phoneNumber,
            'contactPhoto': contact.contactPhoto,
        })
    return jsonify(result), 200