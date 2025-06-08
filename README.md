# Aidminton

Aidminton is a mobile application designed to help badminton players track and manage their injuries. This application allows users to create accounts, log injuries, track pain levels, and access resources for injury prevention and recovery.

## Team Members

- **Name**: Raditya Maheswara  
  **NIM**: 23/516252/PA/22075  
  **University**: Universitas Gadjah Mada (UGM)  
  **GitHub Link**: https://github.com/mash1rou

- **Name**: Muhammad Fariz  
  **NIM**: 23/518174/PA/22237  
  **University**: Universitas Gadjah Mada (UGM)  
  **GitHub Link**: https://github.com/RujakBuah

- **Name**: Girindra Daafi Mada  
  **NIM**: 23/511637/PA/21835  
  **University**: Universitas Gadjah Mada (UGM)  
  **GitHub Link**: https://github.com/girindradmada

- **Name**: Sultan Rizqinta Sinuraya  
  **NIM**: 23/516307/PA/22087  
  **University**: Universitas Gadjah Mada (UGM)

- **Name**: Muhammad Rafif Akio  
  **NIM**: 23/511466/PA/21802  
  **University**: Universitas Gadjah Mada (UGM)

---

## Features

- **User Authentication**: Secure signup and login functionality
- **Profile Management**: Users can update their personal information
- **Common Injuries**: List of common injuries that can occur during badminton sessions
- **Injury Logging**: Record injury details including title, description, date, and pain level
- **First Aid Guide**: Offline first aid encyclopedia for first hand emergency
- **Injury History**: View a log of past injuries
- **Medical Expert Resources**: Access information about medical professionals
- **Customer Service**: Display FAQs and link users to our customer support chat and call
- **Emergency Contact**: Contact emergency contacts through the user's registered contact / authorities 

## Technology Stack

- **Backend**: Flask (Python)
- **Database**: SQLite
- **Frontend**: Flutter (Dart)
- **Authentication**: Werkzeug security for password hashing

## Troubleshooting

### 1. Gradle version not compatible (requires 8.4 instead of 8.3)

```bash
cd aidminton/android
```

Edit `gradle-wrapper.properties` to include:
```
distributionBase=GRADLE_USER_HOME
distributionPath=wrapper/dists
zipStoreBase=GRADLE_USER_HOME
zipStorePath=wrapper/dists
distributionUrl=https://services.gradle.org/distributions/gradle-8.4-all.zip
```

Then run:
```bash
.\gradlew wrapper
flutter clean
flutter pub get
flutter run
```

### 2. Python virtual environment not working / dependencies missing

```bash
cd aidminton/flask-backend
```

Create and activate a new virtual environment:
```bash
python3 -m venv venv
.env\Scripts\Activate
```

If you get a policy error in PowerShell:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Then activate again and install dependencies:
```bash
pip install -r requirements.txt
```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/girindradmada/aidminton
   cd aidminton
   ```

2. Open two terminals (backend & frontend).

3. In backend terminal:
   ```bash
   cd aidminton/flask-backend
   python -m venv venv
   venv\Scriptsctivate
   pip install -r requirements.txt
   ```

4. In `flask-backend/app/config.py`, set your secret key:
   ```python
   FLASK_SECRET_KEY = "your_secret_key_here"
   ```

5. Initialize the database:
   ```bash
   python init_db.py
   ```

6. Start the backend:
   ```bash
   python run.py
   ```

7. In frontend terminal:
   ```bash
   cd aidminton
   flutter clean
   flutter pub get
   flutter run
   ```

## Project Structure

- `flask-backend/run.py`: Main Python backend entry
- `flask-backend/app/init_db.py`: Database initialization
- `flask-backend/app/models.py`: Models and schema
- `flask-backend/app/routes.py`: API routes
- `flask-backend/app/config.py`: Config file
- `requirements.txt`: Backend dependencies
- `lib/pages/`: UI components (Flutter)
- `lib/models/`: Data models (Flutter)
- `lib/services/main.dart`: Entry point for Flutter app

## Context

This project was developed for the course *Workshop Implementasi Rancangan Perangkat Lunak* at Universitas Gadjah Mada.

## License

This project is intended for academic use only and is not licensed for commercial use.
