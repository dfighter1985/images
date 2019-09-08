This is a Jenkins PHP7 build slave based on Ubuntu Xenial.
It runs an OpenSSH server, JDK8 so that Jenkins can log in with SSH, and then build your project with it's Java executor. 

Build:
sudo docker build -t jenkins_slave_php7 .
