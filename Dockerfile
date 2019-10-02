FROM openjdk:8-jre
COPY build/libs/calculator-0.0.1-SNAPSHOT.jar AppCalculator.jar
ENTRYPOINT ["java", "-jar", "AppCalculator.jar"]