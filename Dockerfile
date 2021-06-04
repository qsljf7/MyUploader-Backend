FROM maven:3.3-jdk-8
WORKDIR /usr/local/demo
ADD . .
RUN mvn clean install

#from openjdk:8
#COPY --from=0 /usr/local/demo/target/demo-0.0.1-SNAPSHOT.jar /app.jar
#EXPOSE 8080
#CMD ["java","-jar","/app.jar"]
