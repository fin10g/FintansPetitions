# FintansPetitions

A Spring Boot petition platform demonstrating Continuous Integration and Continuous Delivery (CI/CD) using GitHub, Jenkins, Docker, and AWS EC2.

## Repository

[FintansPetitions Repository](https://github.com/fin10g/FintansPetitions.git)

---

## Overview

FintansPetitions is a web application that allows users to:

* Create petitions
* Search petitions
* Sign petitions
* View petition details and signature counts

The project was developed as part of a Cloud DevOps module and focuses on implementing a complete Continuous Delivery pipeline using modern DevOps practices.

The application is built with:

* Java 17
* Spring Boot
* Spring Data JPA
* JTE Templates
* Maven
* Jenkins
* Docker
* AWS EC2

---

## Features

### Create Petitions

Users can create new petitions by providing:

* Petition Title
* Petition Description

New petitions are persisted to the database and immediately displayed on the homepage.

### Browse Petitions

The homepage displays all petitions currently stored in the repository.

Each petition card links directly to its dedicated signing page.

### Search Petitions

Users can search petitions by:

* Title
* Description

The search functionality is implemented using a custom JPA query.

If no results are found, the application displays:

```text
No petitions found
```

### Sign Petitions

Users can sign petitions by providing:

* First Name
* Last Name
* Email Address

Each signature is associated with a petition through a One-to-Many relationship.

Petition pages display the current signature count.

---

## Application Architecture

### Entities

#### Petition

```java
private Long id;
private String title;
private String description;
```

#### Signer

```java
private Long id;
private String firstName;
private String lastName;
private String email;
```

### Relationships

```java
@OneToMany
```

A Petition can contain multiple Signers.

---

## Technology Stack

| Component        | Technology      |
| ---------------- | --------------- |
| Backend          | Spring Boot     |
| Persistence      | Spring Data JPA |
| Build Tool       | Maven           |
| Templates        | JTE             |
| CI/CD            | Jenkins         |
| Source Control   | GitHub          |
| Containerisation | Docker          |
| Hosting          | AWS EC2         |

---

## CI/CD Pipeline

The project uses Jenkins to automate the build, test, package, and deployment process.

### Pipeline Stages

#### 1. Get Project

Clone the latest code from GitHub.

```groovy
git 'https://github.com/fin10g/FintansPetitions.git'
```

#### 2. Build

Compile the application using Maven.

```bash
mvn clean
mvn dependency:copy-dependencies
mvn compile
```

#### 3. Test

Execute automated tests.

```bash
mvn test
```

#### 4. Package

Generate the deployable WAR file.

```bash
mvn package
```

#### 5. Archive

Archive build artifacts.

#### 6. Deploy

A manual approval gate is included before deployment.

```groovy
timeout(time: 15, unit: 'MINUTES') {
    input message: 'Do you want to approve the deployment?'
}
```

Once approved:

```bash
docker build -t fintanspetitions .
docker rm -f fintanspcontainer || true
docker run --name fintanspcontainer -p 9090:8080 -d fintanspetitions
```

---

## Docker Deployment

### Build Image

```bash
docker build -t fintanspetitions .
```

### Run Container

```bash
docker run --name fintanspcontainer \
-p 9090:8080 \
-d fintanspetitions
```

### Remove Existing Container

```bash
docker rm -f fintanspcontainer
```

---

## Jenkins Configuration

Docker permissions were required for the Jenkins user:

```bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
```

AWS Security Group rules were updated to allow inbound traffic on:

```text
9090/TCP
```

---

## Development Workflow

The project followed an iterative DevOps workflow:

1. Develop locally
2. Commit to GitHub
3. Trigger Jenkins via Webhook
4. Build and test automatically
5. Package application
6. Manual deployment approval
7. Deploy Docker container

This workflow allowed small, incremental changes to be deployed continuously instead of accumulating large batches of changes.

---

## Challenges

### Spring Boot Frontend Development

Previous projects used React for frontend development. Building the UI entirely using JTE templates required a different approach but kept the application lightweight and simplified deployment.

### Jenkins Build Issues

Initially, Jenkins builds appeared to hang indefinitely.

After investigation:

* Java 21 was tested because Jenkins reported Java 17 deprecation warnings.
* The issue persisted.

The actual cause was an apostrophe in the Jenkins pipeline name:

```text
Fintan's Petitions
```

This caused shell parsing issues during execution.

Renaming the pipeline to:

```text
FintansPetitions
```

resolved the problem.

### Docker Permissions

Jenkins initially lacked permission to execute Docker commands. This was resolved by adding the Jenkins user to the Docker group.

---

## Future Improvements

Planned enhancements include:

### Validation

Prevent duplicate signatures by implementing:

* Validation logic
* Service layer architecture
* Custom exceptions

### Testing

Expand automated testing with:

* JUnit
* MockMVC integration tests
* Controller testing
* Test Driven Development (TDD)

### Administration Dashboard

Create an admin-only dashboard to:

* View signers
* Manage petitions
* Monitor activity

### Security

Implement:

* Authentication
* Authorisation
* Role-based access control

---

## Acknowledgements

* Spring Boot
* JTE Template Engine
* Jenkins
* Docker
* AWS EC2
* Maven

Additional dummy petition content was generated with ChatGPT to provide realistic data for testing and demonstration purposes.
