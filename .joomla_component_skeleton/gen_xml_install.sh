#!/usr/bin/env bash
TMP_XML_NAME="./administrator/components/com_${FILE_FOLDER_NAME}/${FILE_FOLDER_NAME}.xml"
touch $TMP_XML_NAME
echo "<?xml version=\"1.0\" encoding=\"utf-8\" ?>" > $TMP_XML_NAME
echo "<extension type=\"component\" version=\"3.5\" method=\"upgrade\">" >> $TMP_XML_NAME
echo "	<name>COM_${EXTENSION_NAME^^}</name>" >> $TMP_XML_NAME
echo "	<creationDate>$(date +%d) $(date +%b) $(date +%Y)</creationDate>" >> $TMP_XML_NAME
echo "	<author>Marko Vucen</author>" >> $TMP_XML_NAME
echo "	<authorEmail>faceofphp@gmail.com</authorEmail>" >> $TMP_XML_NAME
echo "	<authorUrl>clankiss.com</authorUrl>" >> $TMP_XML_NAME
echo "	<copyright>(C) 2016 - 2017 ClanKiss. All rights reserved.</copyright>" >> $TMP_XML_NAME
echo " 	<license>GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html</license>" >> $TMP_XML_NAME
echo "	<version>0.0.1</version>" >> $TMP_XML_NAME
echo "	<description>COM_${EXTENSION_NAME^^}_XML_DESCRIPTION</description>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "	<!-- Runs on install -->" >> $TMP_XML_NAME
echo " 	<install>" >> $TMP_XML_NAME
echo "		<sql>" >> $TMP_XML_NAME
echo "			<file driver=\"mysql\" charset=\"utf8\">sql/install/mysql.sql</file>" >> $TMP_XML_NAME
echo "		</sql>" >> $TMP_XML_NAME
echo "	</install>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "	<!-- Runs on update -->" >> $TMP_XML_NAME
echo "	<update>" >> $TMP_XML_NAME
echo "		<schemas>" >> $TMP_XML_NAME
echo "			<schemapath type=\"mysql\">sql/updates/mysql</schemapath>" >> $TMP_XML_NAME
echo "		</schemas>" >> $TMP_XML_NAME
echo "	</update>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo " 	<!-- Media files -->" >> $TMP_XML_NAME
echo "	<media folder=\"media\" destination=\"com_${FILE_FOLDER_NAME}\">" >> $TMP_XML_NAME
echo "		<folder>css</folder>" >> $TMP_XML_NAME
echo "		<folder>js</folder>" >> $TMP_XML_NAME
echo "	</media>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "	<!-- Front-end files -->" >> $TMP_XML_NAME
echo "	<files folder=\"site\">" >> $TMP_XML_NAME
echo "		<filename>${FILE_FOLDER_NAME}.php</filename>" >> $TMP_XML_NAME
echo "		<filename>controller.php</filename>" >> $TMP_XML_NAME
echo "		<folder>controllers</folder>" >> $TMP_XML_NAME
echo "		<folder>language</folder>" >> $TMP_XML_NAME
echo "		<folder>models</folder>" >> $TMP_XML_NAME
echo "		<folder>views</folder>" >> $TMP_XML_NAME
echo "	</files>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "	<!-- Back-end files -->" >> $TMP_XML_NAME
echo "	<administration>" >> $TMP_XML_NAME
echo "		<!-- Menu entries -->" >> $TMP_XML_NAME
echo "		<menu view=\"cpanel\">COM_${EXTENSION_NAME^^}</menu>" >> $TMP_XML_NAME
echo "		<submenu>" >> $TMP_XML_NAME
echo "			<!--" >> $TMP_XML_NAME
echo "		  Note that all & must be escaped to &amp; for the file to be valid" >> $TMP_XML_NAME
echo "		  XML and be parsed by the installer" >> $TMP_XML_NAME
echo "			<menu link=\"option=com_${FILE_FOLDER_NAME}\">COM_${EXTENSION_NAME^^}</menu>" >> $TMP_XML_NAME
echo "	  -->" >> $TMP_XML_NAME
echo "		</submenu>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "		<!-- Core files -->" >> $TMP_XML_NAME
echo "		<files folder=\"admin\">" >> $TMP_XML_NAME
echo "			<filename>${FILE_FOLDER_NAME}.php</filename>" >> $TMP_XML_NAME
echo "			<filename>access.xml</filename>" >> $TMP_XML_NAME
echo "			<filename>config.xml</filename>" >> $TMP_XML_NAME
echo "			<filename>controller.php</filename>" >> $TMP_XML_NAME
echo "			<folder>controllers</folder>" >> $TMP_XML_NAME
echo "			<folder>language</folder>" >> $TMP_XML_NAME
echo "			<folder>models</folder>" >> $TMP_XML_NAME
echo "			<folder>sql</folder>" >> $TMP_XML_NAME
echo "			<folder>tables</folder>" >> $TMP_XML_NAME
echo "			<folder>views</folder>" >> $TMP_XML_NAME
echo "		</files>" >> $TMP_XML_NAME
echo "	</administration>" >> $TMP_XML_NAME
echo "" >> $TMP_XML_NAME
echo "	<!-- Update servers -->" >> $TMP_XML_NAME
echo "	<updateservers>" >> $TMP_XML_NAME
echo "		<server type=\"extension\" priority=\"1\" name=\"${FILE_FOLDER_NAME}\">http://joomla.box/${FILE_FOLDER_NAME}/update.xml</server>" >> $TMP_XML_NAME
echo "	</updateservers>" >> $TMP_XML_NAME
echo "</extension>" >> $TMP_XML_NAME