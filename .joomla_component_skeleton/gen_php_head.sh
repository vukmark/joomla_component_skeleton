#!/usr/bin/env bash
touch ./tmp_php.txt
echo "<?php" > ./tmp_php.txt
echo "/**" >> ./tmp_php.txt
echo " * @version              0.0.1" >> ./tmp_php.txt
echo " * @package              ${EXTENSION_NAME}" >> ./tmp_php.txt
echo " * @author               Marko Vucen <faceofphp@gmail.com>" >> ./tmp_php.txt
echo " * @copyright            2017 ClanKiss. All right reserved." >> ./tmp_php.txt
echo " * @license              GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html" >> ./tmp_php.txt
echo " */" >> ./tmp_php.txt
echo "" >> ./tmp_php.txt
echo "defined('_JEXEC') or die;" >> ./tmp_php.txt
echo "" >> ./tmp_php.txt
