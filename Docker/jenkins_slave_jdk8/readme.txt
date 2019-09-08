This is a JDK8 Java build slave Docker image for Jenkins.
It runs an OpenSSH server, JDK8 and Maven, Ant so that Jenkins can log in with SSH, and then build your project.

Build:
sudo docker build -t jenkins_slave_jdk8 .
