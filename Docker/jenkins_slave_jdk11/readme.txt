This is a JDK11 Java build slave Docker image for Jenkins.
It runs an OpenSSH server, JDK11 and Maven, Ant so that Jenkins can log in with SSH, and then build your project with it's Java executor.

Build:
sudo docker build -t jenkins_slave_jdk11 .
