#!/bin/bash

SOURCE_DIR="/C/oraclexe/app/oracle"
BACKUP_DIR="/C/Users/lenovo/Desktop/Case_Study/Bash/backup_folder"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

tar cvf "${BACKUP_DIR}/backup_${TIMESTAMP}.tar" -C "${SOURCE_DIR}" .

echo "Backup completed. Archive stored in ${BACKUP_DIR}/backup_${TIMESTAMP}.tar"