#!/usr/bin/env bash
MAIN_ADMIN_CONTROLLER_FILE="./administrator/components/com_${FILE_FOLDER_NAME}/controller.php"

echo "/**" >> $MAIN_ADMIN_CONTROLLER_FILE
echo " * ${EXTENSION_NAME} Main Controller" >> $MAIN_ADMIN_CONTROLLER_FILE
echo " *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo " * @since 0.0.1" >> $MAIN_ADMIN_CONTROLLER_FILE
echo " */" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "class ${EXTENSION_NAME}Controller extends JControllerLegacy" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "{" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	/**" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * The default view for the display method." >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @var    string" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @since  3.0" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 */" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	protected \$default_view = 'cpanel';" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	/**" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * Typical view method for MVC based architecture" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * This function is provide as a default implementation, in most cases" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * you will need to override it in your own controllers." >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @param   boolean  \$cachable   If true, the view output will be cached" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @param   array    \$urlparams  An array of safe URL parameters and their variable types, for valid values see {@link JFilterInput::clean()}." >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @return  JControllerLegacy  A JControllerLegacy object to support chaining." >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 *" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 * @since   3.0" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	 */" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	public function display(\$cachable = false, \$urlparams = array())" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	{" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "		return parent::display(\$cachable = false, \$urlparams = array());" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "	}" >> $MAIN_ADMIN_CONTROLLER_FILE
echo "}" >> $MAIN_ADMIN_CONTROLLER_FILE