#!/usr/bin/env bash
SETUP_DIR='.joomla_component_skeleton'
GREEN='\e[32m'
RED='\e[31m'
NORMAL='\e[39m'
echo -e "${GREEN}Enter extension name for file structure and Class (example: MKClinics): "
echo -e "${RED}NOTE: Component structure will be generated inside current folder $(pwd) ${NORMAL}"
read EXTENSION_NAME
echo -e "${GREEN}Enter extension name for for menu (for human, space allowed):${NORMAL}"
read HUMAN_NAME
FILE_FOLDER_NAME=${EXTENSION_NAME,,}
CLASS_NAME=${FILE_FOLDER_NAME^}

source ./${SETUP_DIR}/gen_php_head.sh
source ./${SETUP_DIR}/gen_admin_files_and_folders.sh
source ./${SETUP_DIR}/gen_site_files_and_folders.sh
source ./${SETUP_DIR}/gen_media_files_and_folders.sh

source ./${SETUP_DIR}/gen_xml_install.sh

# copy empty index.html to each folder
source ./${SETUP_DIR}/copy_index_html_to_all_folders.sh

source ./${SETUP_DIR}/gen_language_ini.sh

# Create folder version where will be component installation file saved
mkdir -p ./versions

rm -f tmp_php.txt

touch mkconstants.sh
echo "#!/usr/bin/env bash" > mkconstants.sh
echo "EXTENSION_NAME='${FILE_FOLDER_NAME}'" >> mkconstants.sh

cp ./${SETUP_DIR}/set_version.php ./
cp ./${SETUP_DIR}/get_version.php ./
cp ./${SETUP_DIR}/.gitignore ./

git status
git add .
git commit -m "Fist setup of com_${FILE_FOLDER_NAME} using skelet generator"
cp ./${SETUP_DIR}/post-commit ./.git/hooks
cp ./${SETUP_DIR}/pre-commit ./.git/hooks

echo -e "${GREEN} \"${HUMAN_NAME}\" is installed. Enjoy making something awesome ${NORMAL}"

mv setup.sh setup.sh.dist




