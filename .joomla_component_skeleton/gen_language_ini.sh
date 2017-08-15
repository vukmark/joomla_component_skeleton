#!/usr/bin/env bash
touch ./administrator/components/com_${FILE_FOLDER_NAME}/language/en-GB/en-GB.com_${FILE_FOLDER_NAME}.sys.ini
touch ./administrator/components/com_${FILE_FOLDER_NAME}/language/en-GB/en-GB.com_${FILE_FOLDER_NAME}.ini
touch ./components/com_${FILE_FOLDER_NAME}/language/en-GB/en-GB.com_${FILE_FOLDER_NAME}.ini

echo "COM_${EXTENSION_NAME^^}=\"${HUMAN_NAME}\"" > ./administrator/components/com_${FILE_FOLDER_NAME}/language/en-GB/en-GB.com_${FILE_FOLDER_NAME}.sys.ini
echo "COM_${EXTENSION_NAME^^}_XML_DESCRIPTION=\"\"" >> ./administrator/components/com_${FILE_FOLDER_NAME}/language/en-GB/en-GB.com_${FILE_FOLDER_NAME}.sys.ini
