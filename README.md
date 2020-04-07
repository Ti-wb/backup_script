# backup_script
Backup file to google drive without using local storage (using pipe)

## Install
This script need [gdrive](https://github.com/gdrive-org/gdrive) to run.

Just clone or download this script, put it to anywhere you want.
## Docs

### Using
    backup.sh "backup target" "file name(option)" "google drive folder token(option)"
### Example 
- simple backup
```
# will make a tar.gz of example_folder and upload it to google drive root folder,file name will be backup-(yy-mm-dd)

backup.sh example_folder/
ex: backup-2020-04-07
```
- Make a backup with custom filename
```
# will make a backup to google drive with custom name

backup.sh example_folder filename_you_want
```
- Make a backup to custom google drive folder
```
backup.sh example_folder filename_you_want folder_token
```