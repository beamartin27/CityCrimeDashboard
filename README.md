## CITY CRIME DASHBOARD

## Description

A web-based dashboard summarizing crime statistics for a city or region. The project allows users to analyze crime trends over time, identify high-crime areas, and manage data through CRUD operations.

## Features

CRUD: Add, edit, and delete crime data.
Analysis: Visualize crime trends and high-crime areas.
Predictions: Use basic regression models to forecast crime rates.

## Getting Started

Prerequisites
Python 3.x installed
Django Framework installed
MySQL Server installed and running
Git installed for version control

## Project Setup

1. Clone the Repository
bash
git clone [repository_url]
cd [project_directory]

2. Set Up the Database
Import the database schema and data:
bash
mysql -u [your_username] -p [database_name] < database_backup.sql
Replace [your_username] with your MySQL username and [database_name] with the name of the database you want to create.
Install Dependencies

3. Install required Python packages:
bash
pip install -r requirements.txt
Set Up Environment Variables

4. Create a .env file in the root directory:
plaintext
DATABASE_NAME=your_database_name
DATABASE_USER=your_username
DATABASE_PASSWORD=your_password
Replace your_database_name, your_username, and your_password with your database details.

5. Run Django Migrations
Sync the Django models with the database:
bash
python manage.py makemigrations
python manage.py migrate
Run the Server

6. Start the Django development server:
bash
python manage.py runserver
Open your browser and visit http://127.0.0.1:8000.

## Project Structure

/crimedashboard: Main Django app.
/templates: HTML templates for frontend rendering.
/static: CSS, JavaScript, and image assets.
database_backup.sql: MySQL database schema and data dump.
requirements.txt: Python dependencies

## Troubleshooting

Common Issues

1. Database Connection Fails
- Check .env file for correct credentials.
- Ensure the MySQL server is running.
- Verify that the database has been imported correctly.

2. Server Does Not Start
- Check for missing dependencies:
bash
pip install -r requirements.txt

- Ensure the migrations are applied:
bash
python manage.py migrate