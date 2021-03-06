#MIT License
#
#Copyright (c) 2019 dfighter1985
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

# Jenkins C++ build slave on Ubuntu Xenial
# This is how it works: Jenkins asks for Docker to spin up a slave container, logs in with SSH, copies over it's java based executor and then executes commands.
#
# Build with the following command:
# sudo docker build -t jenkins_slave_cpp .
FROM ubuntu:xenial

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y openssh-server default-jre-headless git subversion mercurial cmake make g++

# Allow password based authentication with SSH
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd

RUN useradd -m -s /bin/bash slave
RUN echo "slave:slave" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
