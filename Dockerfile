FROM oraclelinux:8.4
LABEL name=ashutoshh
RUN dnf install java-1.8.0-openjdk.x86_64  java-1.8.0-openjdk-devel.x86_64  maven git -y 
RUN mkdir /ven-java
WORKDIR /ven-java
RUN git clone https://github.com/venkat198809/java-springboot_app.git
WORKDIR java-springboot
# now running maven to create .war file 
RUN mvn clean package
