# Vaccine App

## Introduction

Welcome to the Vaccine App! This project is a demonstration application showcasing the capabilities of a vaccination portal  for employees. It is built using the latest technologies, including Spring Boot 3.1 and Java 17.

## Project Structure

The project follows a standard Maven project structure. Key components include:

- **Controller Classes:** Handle user requests and manage user interfaces.
- **Service Classes:** Implement business logic and interact with the database.
- **Entity Classes:** Represent data models for the application.
- **DAO Classes:** Implement Data Access Object patterns, interacting with the database using Spring Data JPA.
- **JSP Pages:** Provide user interfaces for registration, login, member addition, and password recovery.
- - **CSS Pages:**This file make the ui beautiful.
- **Database Configuration:** MySQL database setup instructions, both manual and automatic.

## Dependencies

The project relies on the following dependencies, managed through Maven:

- Spring Boot Starter Data JPA
- Spring Boot Starter Mail
- MySQL Connector/J
- Jakarta Servlet API
- Spring Boot Starter
- Spring Boot Starter Tomcat
- Jakarta Mail
- JSTL
- Tomcat Embed Jasper
- Spring Context Support
-
## Configuration

Ensure proper configuration in `application.properties` for views, database, and mail properties.

## How to Run

1. Set up a MySQL database named ``vaccination``.
2. Choose one of the following options:
   - Manual Database and Table Creation: Execute SQL statements provided in the README.
   - Automatic Database and Table Creation with Spring Boot: Update `application.properties` with `spring.jpa.hibernate.ddl-auto=update`.
3. Run `VaccinationApplication.java` to start the application.

## Usage

- Access the application through the provided JSP pages:
  - `register.jsp`: User registration.
  - `login.jsp`: User login.
  - `addMember.jsp`: Add a new member.
  - `forgot.jsp`: Forgot password.
- The application follows a logical flow outlined in the included flow chart.

## Created By

Velpula Venkata Sudarshan  
Email: [velpulasudarshan1@gmail.com](mailto:velpulasudarshan1@gmail.com)
