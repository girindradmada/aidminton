from app import create_app, db
from models import CommonInjury, MedicalExpert, FirstAidGuide

app = create_app()
app.app_context().push()

def prepopulate_common_injuries():
    injuries_data = [
        {
            "name": "Broken Bones", 
            "injury_photo_url": "assets/icons/brokenbones.png", 
            "description": "A broken bone, or fracture, is a crack or break in a bone. It usually happens because of a fall, accident, or sports injury. Symptoms include severe pain, swelling, bruising, and difficulty moving the injured area."
         },
        {
            "name": "Cramps", 
            "injury_photo_url": "assets/icons/cramps.png", 
            "description": "Muscle cramps are sudden, involuntary contractions of one or more muscles. They often occur after exercise or during the night and can be painful. Stretching and hydration can help relieve or prevent cramps."
         },
        {
            "name": "Joint Pain", 
            "injury_photo_url": "assets/icons/jointpain.png", 
            "description": "Joint pain is discomfort in any joint of the body. It can be caused by injury, arthritis, or other conditions. Symptoms vary but may include soreness, stiffness, swelling, and reduced range of motion."
         },
        {
            "name": "Sprains", 
            "injury_photo_url": "assets/icons/sprains.png", 
            "description": "A sprain is a stretching or tearing of ligaments – the tough bands of fibrous tissue that connect two bones together in your joints. Sprains often happen when you twist or turn a joint awkwardly."
         },
        {
            "name": "Muscle Aches", 
            "injury_photo_url": "assets/icons/muscleaches.png", 
            "description": "Muscle aches, or myalgia, are common and can affect one or more muscles. They are often related to tension, overuse, or muscle injury from exercise or hard physical work. Rest, stretching, and pain relievers can help."},
        {
            "name": "Muscle Tears", 
            "injury_photo_url": "assets/icons/muscletear.png", 
            "description": "A muscle tear is a rupture of muscle fibers. This can happen from a sudden movement, overuse, or trauma. Symptoms include sudden pain, a popping sound, swelling, bruising, and inability to use the muscle."
         },
    ]

    for injury_data in injuries_data:
        existing_injury = CommonInjury.query.filter_by(name=injury_data["name"]).first()
        if not existing_injury:
            new_injury = CommonInjury(name=injury_data["name"], injury_photo_url=injury_data["injury_photo_url"], description=injury_data["description"])
            db.session.add(new_injury)
    print("Common injuries added to session.")

def prepopulate_medical_experts():
    experts_data = [
        {
            'name':'Dr.Asep Hidayat, Sp.JP',
            'specialty':'Cardiologist',
            'phone':'',
            'email':'',
            'photo_url':'assets/icons/asep.png'
        },
        {
            'name':'Dr.Vincent Dimanasye, Sp.OT',
            'specialty':'Orthopedist',
            'phone':'',
            'email':'',
            'photo_url':'assets/icons/vincent.png'
        },
        {
            'name':'Dr.Floryn Noflicker, Sp.PD-KHOM',
            'specialty':'Hermatologist',
            'phone':'',
            'email':'',
            'photo_url':'assets/icons/floryn.png'
        },
    ]

    for expert_data in experts_data:
        existing_expert = MedicalExpert.query.filter_by(name=expert_data["name"]).first()
        if not existing_expert:
            new_expert = MedicalExpert(name=expert_data['name'],specialty=expert_data['specialty'],phone=expert_data['phone'],email=expert_data['email'],photo_url=expert_data['photo_url']
            )
            db.session.add(new_expert)
    print("Medical experts added to session.")
    # db.session.commit() # Commit later after all prepopulation

def prepopulate_first_aid_guides():
    guides_data = [
        {
            "name": "Nosebleed", 
            "guide_photo_url": "assets/icons/brokenbones.png", 
            "description": "To stop a nosebleed, sit or stand upright and lean slightly forward. Pinch the soft part of your nose firmly just above your nostrils for 10-15 minutes. Breathe through your mouth. Avoid leaning back, as this can cause you to swallow blood. If bleeding continues after 15-20 minutes, seek medical help."
         },
        {
            "name": "Fainting", 
            "guide_photo_url": "assets/icons/brokenbones.png", 
            "description": "If someone feels faint, have them lie down with their legs elevated above heart level to increase blood flow to the brain. If they can't lie down, have them sit with their head between their knees. Loosen tight clothing. If they lose consciousness, ensure they are breathing and place them in the recovery position. Seek medical attention if they don't recover quickly or have other symptoms."
         },
        {
            "name": "CPR", 
            "guide_photo_url": "assets/icons/brokenbones.png", 
            "description": "Cardiopulmonary Resuscitation (CPR) is an emergency procedure for someone whose heart has stopped or who is not breathing. Check for responsiveness and call emergency services. Begin chest compressions: push hard and fast in the center of the chest at a rate of 100-120 compressions per minute. If trained, give rescue breaths after every 30 compressions. Continue until help arrives or the person starts breathing."
         },
        {"name": "Cramps (Guide)", 
         "guide_photo_url": "assets/icons/brokenbones.png", 
         "description": "For muscle cramps, gently stretch and massage the affected muscle. Applying heat or cold can also help. Drink plenty of fluids, especially water, and consider consuming foods rich in potassium or electrolytes, like bananas. If cramps are frequent or severe, consult a doctor."
         },
    ]

    for guide_data in guides_data:
        existing_guide = FirstAidGuide.query.filter_by(name=guide_data["name"]).first()
        if not existing_guide:
            new_guide = FirstAidGuide(name=guide_data["name"], guide_photo_url=guide_data["guide_photo_url"], description=guide_data["description"])
            db.session.add(new_guide)

    print("First Aid Guides added to session.")

if __name__ == "__main__":
    prepopulate_common_injuries()
    prepopulate_medical_experts()
    prepopulate_first_aid_guides()
    db.session.commit()
    print("Database prepopulation complete.") 