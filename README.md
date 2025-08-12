### Description
It's used for installation and setup:
* OpenVPN server
* Users configuration files
* Docker container with nginx
DON - docker, OpenVPN, Nginx

### Structure
`don.yml` is playbook that:</br>
* installs `OpenVPN` and `easy-rsa`,
* configures `OpenVPN` server with `1195` port,
* generates root and server certificates,
* generates users certs and configuration files,
* copies generated configuration files to `/var/www/files`,
* installs `docker` and `nginx` docker container,
* configures `nginx` docker container to listen to 80 port, and browse generated configuration files from `/var/www/files`.

`setup.sh` is script, that installs `ansible` on a VM.</br>
`users.yml` is the list of users that configuration files for.</br>
`README.md` contains this description.
<br></br>

### How To
Clone the repo:
```commandline
clone https://github.com/Straumhest/DON.git
```
Go to repo and run script with `sudo` to install ansible:
```commandline
cd DON
sudo ./setup.sh
```
Run ansible playbook with `sudo`
```commandline
sudo ansible-playbook don.yml 
```