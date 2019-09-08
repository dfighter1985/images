Jenkins is a CI/CD tool used for building, testing, and deploying software. It has tons of plugins that allows it to 

This Vagrant image installs Jenkins as a service and Docker into a virtual machine. You can create and use Docker images to use as slaves for Jenkins.
Usage:
vagrant up

When the installation is complete you can log into the box using:
vagrant ssh

The vagrant user has sudo rights.

You can log into Jenkins using a web browser:
http://localhost:8080

The first time you log in you will have to finish the installation using the web frontend.
Install with the suggested plugins at first.
After it's done install the "Docker" plugin then configure it to use your images.
