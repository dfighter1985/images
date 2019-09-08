This is a C++ build slave Docker image for Jenkins.
It runs an OpenSSH server, JDK8 and make, cmake, g++ so that Jenkins can log in with SSH, and then build your project with it's Java executor.

Build:
sudo docker build -t jenkins_slave_cpp .
