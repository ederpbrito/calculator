# Stage 1 (to create a "build" image, ~140MB)
FROM openjdk:8-jdk-alpine3.7 AS builder
RUN java -version

COPY . /usr/src/calculator/
WORKDIR /usr/src/calculator/

# Stage 2 (to create a downsized "container executable", ~87MB)
FROM openjdk:8-jre-alpine3.7
WORKDIR /root/
COPY --from=builder /usr/src/calculator/target/AppCalculator.jar .

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "AppCalculator.jar"]