#!/usr/bin/env bash
MAIN_ADMIN_FILE="./administrator/components/com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.php"
#echo "JLoader::registerNamespace('MK', JPATH_COMPONENT_ADMINISTRATOR . '/src');" >> $MAIN_ADMIN_FILE
#echo "JHtml::_('bootstrap.framework');" >> $MAIN_ADMIN_FILE
#echo "" >> $MAIN_ADMIN_FILE
echo "// Load JavaScript files from media folder" >> $MAIN_ADMIN_FILE
echo "JHtml::_('script', 'com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.js', false, true, false);" >> $MAIN_ADMIN_FILE
echo "" >> $MAIN_ADMIN_FILE
echo "// Load StyleSheet file from media folder" >> $MAIN_ADMIN_FILE
echo "JHtml::_('stylesheet', 'com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.css', false, true, false);" >> $MAIN_ADMIN_FILE
echo "" >> $MAIN_ADMIN_FILE
echo "\$controller = JControllerLegacy::getInstance('${EXTENSION_NAME}');" >> $MAIN_ADMIN_FILE
echo "\$controller->execute(JFactory::getApplication()->input->get('task'));" >> $MAIN_ADMIN_FILE
echo "\$controller->redirect();" >> $MAIN_ADMIN_FILE
