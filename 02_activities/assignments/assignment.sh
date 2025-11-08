#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

if [ -d newproject ]; then
  echo "Recreating the newproject directory"
  rm -rf newproject
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw

#Step1 relocate to where rawdata file is
cd /02_activities/assignments

#Step2 make the folder "raw" in the data directory
#Step 2.1 go to data directory 
cd ./02_activities/data
#Step 2.2 make a folder called "raw"
mkdir raw

#Step3 go back to directory where rawdata.zip is
cd ./02_activities/assignments
#list the contents here
ls

#Step4 move the rawdata to data/raw
mv rawdata.zip ./dsi4/shell/data/raw

# 3. List the contents of the ./data/raw directory
#go to the raw directory
cd ./dsi4/shell/data/raw
#list the content there
ls

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

#go to data 
cd ../
#make the  folder "processed"
mkdir processed
cd processed
mkdir server_logs, user_logs, and event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

# 6. Repeat the above step for user logs and event logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed


###########################################

echo "Project setup is complete!"
