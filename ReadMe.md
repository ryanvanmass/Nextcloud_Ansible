# Description
Easily Deploy a Nextcloud Server on OpenSuse.

# Syntax to run
```
   # Clone Repo
   git clone https://github.com/ryavanmass/nextcloud_ansible
   
   # Configure your Credentials in the Variables at the top of Deploy.yml
   nano Deploy.yml

   sudo ansible-playbook Deploy.yml
```

# Configuration
## Fail2ban
Fail2ban is configured for the following:
* SSH
* Nextcloud

## Firewalld Configured
| Port/Service | State   | Purpose   |
|--------------|---------|-----------|
| SSH          | Limited |           |
| Apache       | Limited | Nextcloud |

## Nextcloud Backup Service
 There is a cron job configured to automatically backup both the entire Nextcloud directly and the Database daily at 2am