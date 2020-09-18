# Example Vagrantfile for KIFÜ C4E

KIFÜ C4E is the Hungarian government's OpenStack based cloud service for education and public collection institutions.

See https://wiki.niif.hu/index.php?title=Cloud_for_Education

**NOTE:** I've trimmed the API URLs for security purposes.

## Usage

* Go to https://keystone.c4e.niif.hu/regsite/apipwgen to generate an API password.
* Log into KIFÜ C4E, and go to https://proxy.c4e.niif.hu/project/api_access/ to get the API URLs for Identity and Network APIs.
* Fill in the following directives in the Vagrantfile: openstack_auth_url, openstack_network_url
* Customize the rest of the directives to your needs (username, password, project name, region, flavor, image, server name, networks, keypair name)
* Type vagrant up and hit enter
* Enjoy

