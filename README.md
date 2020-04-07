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
	backup.sh example_folder/

will make a tar.gz of example_folder and upload it to google drive root folder,file name will be backup-(yy-mm-dd)
ex: backup-2020-04-07

- Make a backup with custom filename
	backup.sh example_folder filename_you_want
will make a backup to google drive with custom name

- Make a backup to custom google drive folder
	backup.sh example_folder filename_you_want folder_token

