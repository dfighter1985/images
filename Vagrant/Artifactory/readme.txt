Artifactory is a binary repository manager system. It is used to store and version binary artifacts (like executables, libraries, etc)

This Vagrant image installs Artifactory as a service into a virtual machine.
Usage:
vagrant up

When the installation is complete you can log into the box using:
vagrant ssh

The vagrant user has sudo rights.

You can log into Artifactory using a web browser:
http://localhost:8081

User: admin
Password: password
