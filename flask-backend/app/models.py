from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False, primary_key=True)
    password = db.Column(db.String(20), nullable=False)

    def __repr__(self):
        return f'<User {self.username}>'

class InjuryLog(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_email = db.Column(db.String(80), db.ForeignKey('user.email'), nullable=False)
    injury_type = db.Column(db.String(100), nullable=False)
    description = db.Column(db.Text)
    date = db.Column(db.Date, nullable=False) # added nullable = false
    severity = db.Column(db.Integer, nullable=False) # Frontend needs to convert tapping the icons into a range of [0,3]

    user = db.relationship('User', backref=db.backref('injury_logs', lazy=True))

class MedicalExpert(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    specialty = db.Column(db.String(100))
    contact = db.Column(db.String(100))
    hospital = db.Column(db.String(240))
    docPhoto = db.Column(db.String(255))  # Just need to store the relative path to this

    def __repr__(self):
        return f'<MedicalExpert {self.name}>'
    
class CommonInjuries(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    injuryName = db.Column(db.String(50), nullable=False)
    injuryPhoto = db.Column(db.String(255)) 
    injuryDescription = db.Column(db.Text)
    injuryCauses = db.Column(db.Text)
    injurySymptoms = db.Column(db.Text)
    injuryTreatment = db.Column(db.Text)

    def __repr__(self):
        return f'<CommonInjury {self.injuryName}>'

class EmergencyContact(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), nullable=False)
    phoneNumber = db.Column(db.String(15), nullable=False)
    contactPhoto = db.Column(db.String(255)) 

    def __repr__(self):
        return f'<EmergencyContact {self.name}>' 

