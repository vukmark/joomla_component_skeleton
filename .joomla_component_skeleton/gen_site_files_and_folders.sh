#!/usr/bin/env bash
mkdir -p ./components/com_${FILE_FOLDER_NAME}/controllers
mkdir -p ./components/com_${FILE_FOLDER_NAME}/language/en-GB/
mkdir -p ./components/com_${FILE_FOLDER_NAME}/layouts/
mkdir -p ./components/com_${FILE_FOLDER_NAME}/models/
mkdir -p ./components/com_${FILE_FOLDER_NAME}/views/

cp ./tmp_php.txt ./components/com_${FILE_FOLDER_NAME}/controller.php
cp ./tmp_php.txt ./components/com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.php
