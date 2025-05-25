# Flask Backend for Flutter Application

This project is a Flask backend designed to support a Flutter frontend application. It provides a RESTful API that the Flutter app can interact with.

## Project Structure

```
flask-backend
├── app
│   ├── __init__.py
│   ├── routes.py
│   ├── models.py
│   └── config.py
├── requirements.txt
├── run.py
└── README.md
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd flask-backend
   ```

2. **Create a virtual environment:**
   ```
   python -m venv venv
   ```

3. **Activate the virtual environment:**
   - On Windows:
     ```
     venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```
     source venv/bin/activate
     ```

4. **Install the required packages:**
   ```
   pip install -r requirements.txt
   ```

5. **Run the application:**
   ```
   python run.py
   ```

## Usage

Once the application is running, you can access the API endpoints defined in `app/routes.py`. Use tools like Postman or cURL to interact with the API.

## Contributing

Feel free to submit issues or pull requests if you have suggestions or improvements for the project.