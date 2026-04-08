# Sales Importer - Forlav Challenge

## 📌 Overview

This application was developed as part of a technical challenge.  
It provides a simple web interface to upload TAB-separated files containing sales data, normalize the information, and store it in a relational database.

After processing the file, the system calculates and displays the *total gross income* from the imported sales.

---

## ⚙️ Tech Stack

- Ruby (>= 2.4)
- Sinatra
- ActiveRecord
- SQLite3

---

## 🚀 How to Run the Project

### 1. Clone the repository

bash
git clone https://github.com/hntMichell/sales_importer_forlav.git
cd sales_importer_forlav


---

### 2. Install dependencies

bash
bundle install


---

### 3. Setup the database

bash
ruby setup.rb


This will create the SQLite database and required tables.

---

### 4. Start the application

bash
ruby app.rb


---

### 5. Access in browser

Open your browser and go to:


http://localhost:4567


---

## 📂 How to Use

1. Click on *"Choose File"*
2. Upload a .tab file (tab-separated values)
3. Submit the form
4. The system will:
   - Parse the file
   - Normalize the data into database tables
   - Display the *Total Gross Income*

---

## 📄 File Format

The uploaded file must be TAB-separated and contain the following columns in order:

1. Purchaser Name  
2. Item Description  
3. Item Price  
4. Purchase Count  
5. Merchant Address  
6. Merchant Name  

A header row is required.

---

## 🧠 Architecture

The application follows a simple and organized structure:

- *Models*: Responsible for data representation and relationships  
- *Service (FileImporter)*: Handles file parsing and business logic  
- *Database*: Normalized relational structure  
- *Web Layer (Sinatra)*: Handles HTTP requests and responses  

---

## 🧪 Testing

Basic test structure included using RSpec.

To run tests:

bash
rspec


---

## 📌 Notes

- The application handles encoding issues when reading .tab files  
- Data is normalized to avoid duplication  
- Designed to be simple, maintainable, and easy to run  

---

## 👤 Author

Developed by Nicolas Michell

---

## ✅ Reviewer Access

The repository has been shared with the reviewer: *arthurmacena*
