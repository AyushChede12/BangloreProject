## Use the official Tomcat image with OpenJDK 8
#FROM tomcat:8.5-jre8
#
## Set the working directory inside the container
#WORKDIR /usr/local/tomcat/webapps
#
## Copy the WAR file from the target directory of your Maven build
#COPY target/SocietyWithFrontend.war app.war
#
## Expose the port that Tomcat will run on
#EXPOSE 8080
#
## Start Tomcat and deploy the WAR file
#CMD ["catalina.sh", "run"]


# Use the official OpenJDK 8 image as a base image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the project JAR or WAR file into the container at /app
COPY target/SocietyWithFrontend.war /app/app.war
COPY src /app/src
COPY pom.xml /app/pom.xml

# Expose the port that your application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.war"]
