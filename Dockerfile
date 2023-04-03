FROM adoptopenjdk/openjdk11:alpine
RUN addgroup -S spring && adduser -S spring -G spring
RUN mkdir /app/
USER spring:spring
WORKDIR /app
VOLUME /tmp
COPY target/demo-application-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-jar","/app/app.jar"]
