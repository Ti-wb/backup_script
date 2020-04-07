#!/bin/bash
date_name=$(date +"%F")
backup_target=$1
backup_file_name=$2
drive_seed=$3
if ["$backup_target" ==""]; then
	echo "Please provide backup target"
	exit 1
fi
if ["$backup_file_name" == ""]; then
	backup_file_name="backup"
fi
if ["$drive_seed" == ""]; then
	echo "Using default gdrive path"
	echo "tar -I pigz -cvf - $backup_target | gdrive upload - $backup_file_name-$date_name.tgz"
	tar -I pigz -cvf - $backup_target | gdrive upload - $backup_file_name-$date_name.tgz
else
	echo "Using custom gdrive path"
	echo "tar -I pigz -cvf - $backup_target | gdrive upload - -p $drive_seed $backup_file_name-$date_name.tgz"
	tar -I pigz -cvf - $backup_target | gdrive upload - -p $drive_seed $backup_file_name-$date_name.tgz
fi
