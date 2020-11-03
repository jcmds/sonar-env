SonarQube [![Build Status](https://travis-ci.org/SonarSource/sonarqube.svg?branch=master)](https://travis-ci.org/SonarSource/sonarqube) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=org.sonarsource.sonarqube%3Asonarqube&metric=alert_status)](https://sonarcloud.io/dashboard?id=org.sonarsource.sonarqube%3Asonarqube)
=========

## How to run ?

-> In terminal execute: docker-compose up -d at current directory

-> await to complete

-> that's fine, your env is running !


## How to use ?

-> in browser execute: http://localhost:9000/ to open sonar ui

-> enter "admin" in password and login

---

Continuous Inspection
---------------------
SonarQube provides the capability to not only show health of an application but also to highlight issues newly introduced. With a Quality Gate in place, you can [Clean As You Code](https://blog.sonarsource.com/clean-as-you-code) and therefore improve code quality systematically.

Links
-----

* [Website](https://www.sonarqube.org)
* [Download](https://www.sonarqube.org/downloads/)
* [Documentation](https://docs.sonarqube.org)
* [Twitter](https://twitter.com/SonarQube)
* [SonarSource](https://www.sonarsource.com), author of SonarQube
* [Issue tracking](https://jira.sonarsource.com/browse/SONAR/), read-only. Only SonarSourcers can create tickets.
* [Responsible Disclosure](https://community.sonarsource.com/t/responsible-vulnerability-disclosure/9317)
* [Dogfood](https://next.sonarqube.com/sonarqube) instance of the next SonarQube version


Building
--------

To build sources locally follow these instructions.

### Build and Run Unit Tests

Execute from project base directory:

    ./gradlew build

The zip distribution file is generated in `sonar-application/build/distributions/`. Unzip it and start server by executing:

    # on linux
    bin/linux-x86-64/sonar.sh start 
    # or on MacOS
    bin/macosx-universal-64/sonar.sh start
    # or on Windows
    bin\windows-x86-64\StartSonar.bat 

### Open in IDE

If the project has never been built, then build it as usual (see previous section) or use the quicker command:

    ./gradlew ide
    
Then open the root file `build.gradle` as a project in Intellij or Eclipse.

### Gradle Hints

| ./gradlew command | Description |
|---|---|
| `dependencies`| list dependencies |
| `dependencyCheckAnalyze` | list vulnerable dependencies |
| `dependencyUpdates` | list the dependencies that could be updated |
| `licenseFormat --rerun-tasks` | fix source headers by applying HEADER.txt |
| `wrapper --gradle-version 5.2.1` | upgrade wrapper |

License
-------

Copyright 2008-2020 SonarSource.

Licensed under the [GNU Lesser General Public License, Version 3.0](https://www.gnu.org/licenses/lgpl.txt)


