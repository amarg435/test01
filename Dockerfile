FROM openjdk:8
EXPOSE 8080
WORKDIR /app/
ADD target/springboot-k8s-demo.jar /app/springboot-k8s-demo.jar
ENTRYPOINT ["java","-jar","/app/springboot-k8s-demo.jar"]
