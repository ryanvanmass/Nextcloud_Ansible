#!/bin/bash

sudo -u wwwrun php /srv/www/htdocs/nextcloud/occ maintenance:mode --on
rsync -Aavx /srv/www/htdocs/nextcloud/ /mnt/Backup/`date +"%Y%m%d"`/
mysqldump --single-transaction -h localhost -u nextclouduser -psome-password-here nextcloud > /mnt/Backup/`date +"%Y%m%d"`/nextcloud-sqlbkp_`date +"%Y%m%d"`.bak
sudo -u wwwrun php /srv/www/htdocs/nextcloud/occ maintenance:mode --off
