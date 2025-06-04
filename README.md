# Aidminton

Aidminton is a mobile application designed to help badminton players track and manage their injuries. This application allows users to create accounts, log injuries, track pain levels, and access resources for injury prevention and recovery.

## Team Members

- **Name**: Raditya Maheswara  
  **NIM**: 23/516252/PA/22075  
  **University**: Universitas Gadjah Mada (UGM)

- **Name**: Muhammad Fariz  
  **NIM**: 23/518174/PA/22237  
  **University**: Universitas Gadjah Mada (UGM)

- **Name**: Girindra Daafi Mada  
  **NIM**: 23/511637/PA/21835  
  **University**: Universitas Gadjah Mada (UGM)

- **Name**: Sultan Rizqinta Sinuraya  
  **NIM**: 23/516307/PA/22087  
  **University**: Universitas Gadjah Mada (UGM)

---

### Honorable Member

- **Name**: Muhammad Fatih Arrazy  
  **University**: University of Technology Sydney (UTS)


## Features

- (Not completed yet)

## Technology Stack

- **Backend**: Flask (Python)
- **Database**: SQLite
- **Frontend**: Flutter (Dart)
- **Authentication**: Werkzeug security for password hashing

## Troubleshooting (if troube arises)

1. Gradle version not compatible because it need the 8.4 version instead of 8.3
   
   1.1 Cd to * *aidminton/android* *
   1.2 Find gradle-wrapper.properties and make sure everything inside is the same as below:
   ```
   distributionBase=GRADLE_USER_HOME
   distributionPath=wrapper/dists
   zipStoreBase=GRADLE_USER_HOME
   zipStorePath=wrapper/dists
   distributionUrl=https://services.gradle.org/distributions/gradle-8.4-all.zip 
   ```
   1.3 Run this in * *aidminton/android* *:
   ```
   .\gradlew wrapper
   ```
   1.4 After installation, run this:
   ```
   flutter clean
   flutter pub get
   flutter run
   ```
2. Python virtual enviroment unable to run/installation dependencies is not complete
   
   2.1 Cd to * *aidminton/flask-backend* *
   2.2 Delete the virtual enviroment previously in the file
   2.3 Create a new virtual enviroment:
   ```
   python3 -m venv venv
   ```
   2.4 Now activate the virtual enviroment (If u can run, u can skip to 2.6):
   ```
   .\venv\Scripts\Activate
   ```
   2.5 If you get a policy error saying scripts are disabled, run PowerShell as Administrator once and do:
   ```
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
   2.5 Then re-try:
   ```
   .\venv\Scripts\Activate
   ```
   2.6 Install dependencies:
   ```
   pip install -r requirements.txt
   ```
   
## Installation

1. Clone the repository:
   ```
   git clone https://github.com/girindradmada/aidminton
   cd aidminton
   ```
2. Make each terminal for backend and front end in powershell

3. Cd to * *aidminton/flask-backend* * (Backend terminal)

4. Activate a virtual enviroment (U can skip to 6, if there already is a virtual enviroment) (Backend terminal):
   ```
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   ```

5. If there is not a virtual environment available and activate it (Backend terminal):
   ```
   python -m venv venv
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   ```

6. Install dependencies (Backend terminal):
   ```
   pip install -r requirements.txt
   ```

7. Cd to * *aidminton/flask-backend/app/config.py* * and change the FLASK_SECRET_KEY to your liking (Backend terminal):
   ```
   FLASK_SECRET_KEY=your_secret_key_here
   ```

8. Go back * *aidminton/flask-backend* * and Initialize the database (Backend terminal):
   ```
   python init_db.py
   ```

9. Run the Backend Flask Session (Backend terminal):
   ```
   python run.py
   ```

10. In the Frontend terminal, Cd to * *aidminton* * folder at the beginning, activate your Android Studio Emulator, and then run your appplication (Frontend terminal):
   ```
   #Activate your Android Studio Emulator
   flutter clean
   flutter pub get
   flutter run
   ```

## Project Structure

- (Not completed yet)

## Context

This project was for the subject Workshop Implementasi Rancangan Perangkat Lunak/Software Design Implementation Workshop

## License

This project is submitted for academic purposes and is not licensed for commercial use.
