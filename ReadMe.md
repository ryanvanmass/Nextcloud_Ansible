# Description
Easily Deploy a Nextcloud Server via Docker.

# Syntax to run
```
    apt install ansible
    ansible-pull -U https://github.com/ryanvanmass/Nextcloud_Ansible Deploy.yml
```

# Nextcloud Configuration
- Links port 8080 to 80
- Mounts the /mnt directory of the host system to /mnt on the docker container
  - This is to allow you to access any Network Shares mounted on the Host system via Nextcloud
- Names the Container NextCloud

# Additional Configuration
- UFW Configured
  - | Port | State   | Purpose   |
    |------|---------|-----------|
    | 22   | Limited | SSH       |
    | 8080 | Allowed | Nextcloud |
- There is a systemd Service configured to automatically backup the Nextcloud Container to `/mnt/Backup/Nextcloud`