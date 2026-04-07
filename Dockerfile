FROM registry.access.redhat.com/ubi9/openjdk-11:1.21-1
USER root
WORKDIR /build
COPY . .
RUN mvn clean package -DskipTests -X
