#!/bin/bash

#install wget
Wget=$(which wget)
if [[ -z ${Wget} ]]; then
   echo "wget installation"
   sudo apt-get install -y wget
fi
wget https://github.com/WorkflowCenter-Repositories/ToolsInstallationScripts/raw/master/tools-install.sh

chmod u+x tools-install.sh
. ./tools-install.sh

sudo service docker start

  echo "deploy the workflow"
   if [[ -d ~/Mega-NJ ]]; then
      echo "previous workflow execution exists and will be deleted"
      rm -r ~/Mega-NJ 
   fi
  cfy local init --install-plugins -p Mega-NJ.yaml --input input.yaml

cfy local execute -w install
