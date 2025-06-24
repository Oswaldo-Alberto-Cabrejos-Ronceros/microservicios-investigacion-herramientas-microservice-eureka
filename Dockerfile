#traemos imagen de jdk
FROM openjdk:17-jdk-alpine
#creamos directorio en el contenedor
WORKDIR /app
#copeamos el jar al contenedor
COPY target/eureka-service-0.0.1-SNAPSHOT.jar eureka-service-app.jar
#exponemos el puerto
EXPOSE 8761
#comando para ejecutar la app
ENTRYPOINT ["java","-jar" ,"eureka-service-app.jar"]