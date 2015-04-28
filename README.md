# Blockstrap for Vagrant!

Welcome to Blocktrap Framework running in Vagrant. This project is to help you up and running blockstrap framework fast in local environment.

#Requirement

1. **VirtualBox - Download latest from https://www.virtualbox.org/
2. **Vagrant - Download latest from https://www.vagrantup.com/

#Running & Installing

1. **Clone this repository
2. **Make "web" directory in main folder tree


For 1st time installation, this might take around 20 minute to download the image

```
vagrant up

```

Setup webserver using Puppet

```
vagrant provision

```

You should now can access blockstrap framework website through http://192.168.33.10/

To ssh into the webserver:
host: 192.168.33.10
user:vagrant
password:vagrant