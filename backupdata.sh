#!/bin/bash

function create_backup {

	src_dir=/home/ravi/projects/django-todo-cicd
	
	tgt_dir=/home/ravi/backups
	
	current_timestamp=$(date "+%y-%m-%d-%H-%M-%S")
	
	final_file=$tgt_dir/cicd-backup-$current_timestamp.tgz
	
	tar czf $final_file -C $src_dir .
 
}

echo "start backup"
create_backup
echo "back complete"
