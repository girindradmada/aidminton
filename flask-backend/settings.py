from flask import Blueprint, request, jsonify, g
from extensions import db
from models import User, UserSettings, InjuryLog, MedicalExpert, CommonInjury, EmergencyContact, FirstAidGuide
from auth import jwt_required
from datetime import datetime

bp = Blueprint('settings', __name__)

@bp.route('/api/settings', methods=['GET'])
@jwt_required
def get_settings():
    user = g.current_user
    return jsonify({
        'theme': user.settings.theme,
        'language': user.settings.language,
        'notifications': user.settings.notifications
    })

@bp.route('/api/settings', methods=['POST'])
@jwt_required
def update_settings():
    data = request.get_json()
    user = g.current_user
    settings = user.settings
    if 'theme' in data:
        settings.theme = data['theme']
    if 'language' in data:
        settings.language = data['language']
    if 'notifications' in data:
        settings.notifications = data['notifications']
    db.session.commit()
    return jsonify({'message': 'Settings updated successfully'})

@bp.route('/api/injuries', methods=['GET'])
@jwt_required
def list_injuries():
    user = g.current_user
    logs = InjuryLog.query.filter_by(user_id=user.id).order_by(InjuryLog.date.desc()).all()
    return jsonify([
        {
            'id': log.id,
            'title': log.title,
            'description': log.description,
            'date': log.date.isoformat()
        } for log in logs
    ])

@bp.route('/api/injuries', methods=['POST'])
@jwt_required
def create_injury():
    user = g.current_user
    data = request.get_json()
    if not data.get('title') or not data.get('date'):
        return jsonify({'error': 'Title and date are required'}), 400
    log = InjuryLog(
        user_id=user.id,
        title=data['title'],
        description=data.get('description', ''),
        date=datetime.fromisoformat(data['date'])
    )
    db.session.add(log)
    db.session.commit()
    return jsonify({'message': 'Injury log created', 'id': log.id}), 201

@bp.route('/api/injuries/<int:injury_id>', methods=['GET'])
@jwt_required
def get_injury(injury_id):
    user = g.current_user
    log = InjuryLog.query.filter_by(id=injury_id, user_id=user.id).first()
    if not log:
        return jsonify({'error': 'Not found'}), 404
    return jsonify({
        'id': log.id,
        'title': log.title,
        'description': log.description,
        'date': log.date.isoformat()
    })

@bp.route('/api/experts', methods=['GET'])
def list_experts():
    experts = MedicalExpert.query.all()
    return jsonify([
        {
            'id': e.id,
            'name': e.name,
            'specialty': e.specialty,
            'phone': e.phone,
            'email': e.email,
            'photo_url': e.photo_url
        } for e in experts
    ])

@bp.route('/api/common_injuries', methods=['GET'])
def list_common_injuries():
    injuries = CommonInjury.query.all()
    return jsonify([
        {
            'id': i.id,
            'name': i.name,
            'injury_photo_url': i.injury_photo_url,
            'description': i.description
        } for i in injuries
    ])

@bp.route('/api/emergency_contacts', methods=['GET'])
@jwt_required
def list_emergency_contacts():
    user = g.current_user
    contacts = EmergencyContact.query.filter_by(user_id=user.id).all()
    return jsonify([
        {
            'id': c.id,
            'name': c.name,
            'relationship': c.relationship,
            'phone_number': c.phone_number
        } for c in contacts
    ])

@bp.route('/api/emergency_contacts', methods=['POST'])
@jwt_required
def create_emergency_contact():
    user = g.current_user
    data = request.get_json()
    if not data.get('name') or not data.get('phone_number'):
        return jsonify({'error': 'Name and phone number are required'}), 400
    contact = EmergencyContact(
        user_id=user.id,
        name=data['name'],
        relationship=data.get('relationship', ''),
        phone_number=data['phone_number']
    )
    db.session.add(contact)
    db.session.commit()
    return jsonify({'message': 'Emergency contact created', 'id': contact.id}), 201

@bp.route('/api/first_aid_guides', methods=['GET'])
def list_first_aid_guides():
    guides = FirstAidGuide.query.all()
    return jsonify([
        {
            'id': g.id,
            'name': g.name,
            'guide_photo_url': g.guide_photo_url,
            'description': g.description
        } for g in guides
    ]) 