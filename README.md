# 🐾 PetAdopt: A Modern Pet Adoption Management System

An aesthetic, simple, and secure web-based platform designed to connect homeless pets with loving families. This project was built as a college requirement to demonstrate full-stack integration using Python and SQL.

## ✨ Features
* **Aesthetic UI:** Modern "Soft UI" design using Bootstrap 5 and custom CSS.
* **Pet Gallery:** Dynamic display of available pets pulled directly from the database.
* **Secure Adoption Form:** Adopters can submit requests without needing an account.
* **Verified ID Upload:** Mandatory identity verification for safer adoptions.
* **Admin Dashboard:** A secured area for staff to manage adoption requests and view uploaded IDs.
* **Donation Integration:** Clear channels for GCash, Maya, and Bank transfers.

## 🛠️ Tech Stack
* **Backend:** Python (Flask)
* **Database:** SQLite (SQLAlchemy ORM)
* **Frontend:** HTML5, CSS3, Bootstrap 5
* **Security:** Werkzeug for secure file uploads and Flask Sessions for Admin auth.

## 📂 Project Structure
```text
pet_adoption_system/
├── app.py              # Flask Backend & Database Logic
├── database.db         # SQLite Database (Auto-generated)
├── static/
│   ├── style.css       # Custom Aesthetic Styling
│   └── uploads/        # Store for Verified IDs (Git-ignored)
└── templates/
    ├── index.html      # Landing Page (Mission/Vision/Pets)
    ├── adopt.html      # Submission Form
    └── admin.html      # Secured Dashboard