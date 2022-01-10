FROM websphere-liberty:21.0.0.9-full-java8-ibmjava
COPY --chown=1001:0 server.xml /config
COPY --chown=1001:0 target/spring-petclinic-2.6.0-SNAPSHOT.jar /config/dropins/spring/spring-petclinic.jar
RUN configure.sh
