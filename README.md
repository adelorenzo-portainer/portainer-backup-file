# Portainer backup to file howto
How to backup a Portainer instance using an API call to a tar.gz file

In this quick tutorial you will learn how to backup a Portainer instance to a tar.gz file that you can store in any filesystem.

1) The first step is to access your "My account" page under your username in Portainer:
<img width="2056" alt="Screenshot 2023-06-02 at 10 57 55 AM" src="https://github.com/adelorenzo-portainer/portainer-backup-file/assets/81579885/aaa6fbd7-909c-47e8-8449-a431ab4f4759">

2) Click on the  "+ Add access token" button
<img width="2056" alt="Screenshot 2023-06-02 at 10 58 03 AM" src="https://github.com/adelorenzo-portainer/portainer-backup-file/assets/81579885/f6d08e55-baa2-4d1c-b28d-b76c2cb50b6c">

3) Give your token a descriptive name and click on "Add access token"
<img width="2056" alt="Screenshot 2023-06-02 at 10 58 18 AM" src="https://github.com/adelorenzo-portainer/portainer-backup-file/assets/81579885/e00c4e03-2833-4df2-ac68-7fc599af154b">

4) Make sure to click on the "Copy access token" button and store in a save place like a password manager, for example. The token will only be displayed once.
<img width="2056" alt="Screenshot 2023-06-02 at 10 58 39 AM" src="https://github.com/adelorenzo-portainer/portainer-backup-file/assets/81579885/d1dabbd8-420a-4936-8bdc-7b7e884bb13a">

5) You should see your access token in your Account page.
<img width="2056" alt="Screenshot 2023-06-02 at 10 59 44 AM" src="https://github.com/adelorenzo-portainer/portainer-backup-file/assets/81579885/285676bb-ac80-4316-a750-f57672010d80">

6) The ``portainer_backup.sh`` script in this repo is an example that can be used to automate the backup process with a scheduler like `cron`, for example. Make sure to change the variables named `API_KEY` with the one generated using the steps above and `URL` with the address of your Portainer server. It is importainer to leave the `/api/backup` sub-path after the URL variable so the proper backup API call is invoked.
