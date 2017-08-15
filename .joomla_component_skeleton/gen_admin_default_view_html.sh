#!/usr/bin/env bash
DEFAULT_ADMIN_VIEW_HTML_FILE="./administrator/components/com_${FILE_FOLDER_NAME}/views/cpanel/view.html.php"
echo "/**" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo " * cPanel View" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo " *" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo " * @since 0.0.1" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo " */" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "class ${EXTENSION_NAME}ViewCpanel extends JViewLegacy" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "{" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	/**" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 * Execute and display a template script." >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 *" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 * @param   string  \$tpl  The name of the template file to parse; automatically searches through the template paths." >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 *" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 * @return  mixed  A string if successful, otherwise an Error object." >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 *" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 * @see     JViewLegacy::loadTemplate()" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 * @since   3.0" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	 */" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	public function display(\$tpl = null)" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	{" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "		\$this->setDocumentTitle(JText::_('COM_${EXTENSION_NAME^^}_CPANEL_DOCUMENT_TITLE'));" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "		\$this->addToolbar();" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "		return parent::display(\$tpl);" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	}" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	private function addToolbar()" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	{" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "		JToolbarHelper::title(JText::_('COM_${EXTENSION_NAME^^}_CPANEL_DOCUMENT_TITLE'));" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "	}" >> $DEFAULT_ADMIN_VIEW_HTML_FILE
echo "}" >> $DEFAULT_ADMIN_VIEW_HTML_FILE