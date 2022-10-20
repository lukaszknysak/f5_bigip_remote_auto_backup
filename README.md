# f5_bigip_remote_auto_backup

This is a description and script for automated backups to the local device and to network locations.

## 🚀 Usage

You only need the f5_backup.sh script file. Download this file and import it using to Your BIG-IP to /shared/backup folder. You can change the folder if You want.






## ▶️ Development

1. Refer to the article below to configure SSH public key authentication on BIG-IP systems (11.x - 16.x). 
   
   Review section **Configure public-key authentication from the BIG-IP system to a remote system**.

    `GOTO` **[`https://support.f5.com/csp/article/K13454`](https://support.f5.com/csp/article/K13454)**
    
   
 
2. Modify f5_backup.sh to fit your environment.
    ```sh
    ...
    backupdir=/shared/backup/
    backup_file="$(date +%Y-%m-%d)"_"$HOSTNAME".ucs
    login="lukasz"
    rsync_dest="10.1.10.71"
    ...
    ```

3. Copy f5_backup.sh script to */shared/backup* folder on BIG-IP, modify permissions for executing this file:
    ```sh
    chmod +x f5_backup.sh
    ```



