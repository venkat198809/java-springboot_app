FROM oraclelinux:8.4 
LABEL name=ashutoshh
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /ashu-project
WORKDIR /ashu-project
RUN git clone https://github.com/redashu/java-springboot.git
WORKDIR java-springboot
RUN mvn clean package
