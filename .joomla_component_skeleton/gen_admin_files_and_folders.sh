#!/usr/bin/env bash
# Generate Admin folders
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/controllers
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/language/en-GB/
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/models/
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/sql/install/
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/sql/updates/
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/tables/
mkdir -p ./administrator/components/com_${FILE_FOLDER_NAME}/views/cpanel/tmpl

cp ./tmp_php.txt ./administrator/components/com_${FILE_FOLDER_NAME}/controller.php
cp ./tmp_php.txt ./administrator/components/com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.php
cp ./tmp_php.txt ./administrator/components/com_${FILE_FOLDER_NAME}/views/cpanel/view.html.php
cp ./tmp_php.txt ./administrator/components/com_${FILE_FOLDER_NAME}/views/cpanel/tmpl/default.php

source ./${SETUP_DIR}/gen_main_admin_php.sh
source ./${SETUP_DIR}/gen_admin_main_controller.sh

touch ./administrator/components/com_${FILE_FOLDER_NAME}/sql/install/mysql.sql
echo "-- @TODO Write SQL for first install" > ./administrator/components/com_${FILE_FOLDER_NAME}/sql/install/mysql.sql

source ./${SETUP_DIR}/gen_admin_default_view_html.sh
