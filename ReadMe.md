# Description
Easily Deploy a Nextcloud Server on OpenSuse.

# Syntax to run
```
    zypper install ansible git
    ansible-pull -U https://github.com/ryanvanmass/Nextcloud_Ansible -c main Deploy.yml
    sudo -u wwwrun php /srv/www/htdocs/nextcloud/occ config:system:set trusted_domains 0 --value=$URL
```

# Nextcloud Configuration
## Default User Credentials

**Username:** admin

**Password:** password

## Database Credentials

**User:**: nextclouduser

**Password:** some-password-here

**Database:** nextcloud

# Additional Configuration
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