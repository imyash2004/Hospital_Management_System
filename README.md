# Hospital Maven Webapp

## Project Overview

This is a Hospital Management web application built using Java Servlets and JSP. The application supports multiple user roles including Admin, Doctor, and User, allowing management of doctors, appointments, and users. It is packaged as a WAR file and can be deployed on a Tomcat server.

## Technologies Used

- Java Servlet API 4.0.1
- JSP (JavaServer Pages)
- JSTL 1.2 and Standard Taglibs 1.1.2
- MySQL Connector/J 8.0.11
- Maven for build and dependency management
- Apache Tomcat 9 (for deployment)
- Docker (for containerized deployment)

## Prerequisites

- Java Development Kit (JDK) 8 or higher
- Apache Maven 3.x
- Docker (optional, for containerized deployment)
- MySQL database server

## Build Instructions

1. Clone the repository.
2. Configure your MySQL database and update the database connection settings in the project (e.g., in `DbConnect.java`).
3. Build the project using Maven:
   ```bash
   mvn clean package
   ```
   This will generate a `Hospital.war` file in the `target/` directory.

## Running the Application

### Running Locally with Tomcat

1. Install and configure Apache Tomcat 9.
2. Deploy the generated `Hospital.war` file to the Tomcat `webapps` directory.
3. Start the Tomcat server.
4. Access the application at: `http://localhost:8080/Hospital/` or `http://localhost:8080/` if deployed as ROOT.

### Running with Docker

1. Build the Docker image:
   ```bash
   docker build -t hospital-app .
   ```
2. Run the Docker container:
   ```bash
   docker run -p 8080:8080 hospital-app
   ```
3. Access the application at: `http://localhost:8080/`

## Project Structure Overview

- `src/main/java/com/` - Java source code including servlets, DAO, entities, and database connection.
- `src/main/webapp/` - JSP pages and web resources.
  - `admin/` - Admin-specific JSP pages.
  - `doctor/` - Doctor-specific JSP pages.
  - `component/` - Common JSP components like navbar and footer.
  - `img/` - Images used in the application.
  - Main JSP files like `index.jsp`, `admin_login.jsp`, `doctor_login.jsp`, `user_login.jsp`, `Appointment.jsp`, etc.
- `src/main/resources/` - Resource files.
- `pom.xml` - Maven project configuration.
- `Dockerfile` - Docker configuration for containerizing the app.

## User Roles and Main Pages

- **Admin**: Manages doctors, patients, and users. Login page: `admin_login.jsp`.
- **Doctor**: Manages appointments and patient status. Login page: `doctor_login.jsp`.
- **User**: Can register, login, and book/view appointments. Login page: `user_login.jsp`.
- Common pages include appointment booking and viewing, password change, and profile editing.

## Notes

- Ensure the MySQL database is running and accessible before starting the application.
- Update database credentials in the source code as needed.
- The application uses JSTL and standard taglibs for JSP rendering.

---

This README provides a comprehensive overview and instructions to build, run, and understand the Hospital Maven Webapp project.
