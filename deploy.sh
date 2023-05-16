#!/bin/bash

// check system info
sudo uname -a
echo ################################################################################################
echo "checking system info"
sudo apt update 
echo ###############################################################################################
echo "starting update"
echo update completed 
echo ###############################################################################################
echo "downloading web files"
sudo wget  https://www.free-css.com/assets/files/free-css-templates/download/page291/elearning.zip
echo ###############################################################################################
echo "download completed"
echo ###############################################################################################
echo "upzip web files"
sudo unzip elearning.zip
cd elearning-html-template
sudo cp -r ./* /var/www/html/
echo ###############################################################################################
echo "Task Completed"
echo ###############################################################################################
echo "Restarting Apache2"
sudo systemctl restart apache2
echo ###############################################################################################
echo "checking apache2 status"
if systemctl is-active --quiet apache2; then 
   echo "Apache2 is running."
else
   echo "Apache2 is not running."
fi 

echo ###############################################################################################
echo "Check if /var/www/html directory exists"
if [ -d "/var/www/html" ]; then
   echo "/var/www/html directory exists."
else
  echo "/var/www/html directory does not exists."
fi
echo ###############################################################################################
echo
echo
echo
echo