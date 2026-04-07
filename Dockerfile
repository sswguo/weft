FROM registry.access.redhat.com/ubi9/openjdk-11:1.21-1.1733995522
USER root
WORKDIR /build
COPY . .
RUN env
RUN mvn clean -o package -DskipTests -X
