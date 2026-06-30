# Usamos Tomcat 9 con Java 11 (ideal para JSP)
FROM tomcat:9.0-jdk11-openjdk-slim

# Limpiamos el servidor por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo lalopro.war al servidor y lo renombramos a ROOT.war
COPY lalos.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto 8080 que usa Render
EXPOSE 8080

# Encendemos el servidor
CMD ["catalina.sh", "run"]
