# Use official OpenJDK 17 image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy SSL certificate to container
COPY src/main/resources/ec2.p12 /app/resources/ec2.p12
# Copy JAR file
COPY target/AwsEc2DockerCICDDemo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java","-jar","app.jar"]
