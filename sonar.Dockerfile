FROM sonarqube:lts-alpine

ENV SONARQUBE_JDBC_URL="jdbc:postgresql://postgres:5432/sonar"
ENV SONARQUBE_JDBC_USERNAME="sonar"
ENV SONARQUBE_JDBC_PASSWORD="sonar"