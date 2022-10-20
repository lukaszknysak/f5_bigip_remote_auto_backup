#!/bin/bash
backupdir=/shared/backup/
backup_file="$(date +%Y-%m-%d)"_"$HOSTNAME".ucs
login="lukasz"
rsync_dest="10.1.10.71"

cd $backupdir

tmsh save /sys ucs /shared/backup/$backup_file

find -type f -mtime +14 -name '*.ucs' -print0 | xargs -r0 rm --

rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress /shared/backup/$backup_file $login@$rsync_dest:~/ucs





