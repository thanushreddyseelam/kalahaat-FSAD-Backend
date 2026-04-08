# KalaHaat Backend (Spring Boot)

This is the central backend API for the **KalaHaat E-commerce platform**, built specifically to support the KalaHaat React frontend. It provides secure JWT authentication, product management, cart operations, and order processing.

---

## 🚀 Prerequisites
To run this project on your device, you need the following installed:
1.  **Java 17** (or higher)
2.  **Maven**
3.  **MySQL Server** (Running locally on port 3306)

---

## 🛠️ Setup Instructions

### 1. Database Configuration
You must have a local MySQL database set up before starting the application.
1. Open your MySQL client (e.g., MySQL Workbench or terminal).
2. Create the database by running:
   ```sql
   CREATE DATABASE kalahaat_db;
   ```
3. Ensure your local MySQL user is `root` with the password `Thanush@752`. 
   *(If you use a different password, you must update `src/main/resources/application.properties`)*

### 2. Install & Run
Open a terminal in this project's root folder and run:

```bash
# Download dependencies and compile
mvn clean install

# Start the Spring Boot Application
mvn spring-boot:run
```

**Note:** The backend will start on **`http://localhost:5000`**. You should see a message in the terminal saying `Started KalaHaatApplication`.

---

## 🛡️ Key Technologies
*   **Java 17** & **Spring Boot 3.2**
*   **Spring Security & JWT** (Stateless authentication)
*   **Spring Data JPA / Hibernate** (Object-Relational Mapping)
*   **MySQL** (Relational Database)
