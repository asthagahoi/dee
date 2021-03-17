FROM openjdk:11.0-jdk-slim
VOLUME /tmp
COPY /target/OrderServiceMS-0.0.1-SNAPSHOT.jar /usr/app/   
WORKDIR /usr/app
EXPOSE 8200
ENV JAVA_OPTS=""
RUN sh -c "touch OrderServiceMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "OrderServiceMS-0.0.1-SNAPSHOT.jar" ]
