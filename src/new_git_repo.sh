#!/bin/bash

######################################
# All rights reserved. 
# Copyright © 2023 - Christoph Rohde
# 
######################################

# ANSI Color
indigo='\033[0;34m'
color_reset='\033[0m'

# Ask for project name
printf "${indigo}Enter the project name: ${color_reset}"
read -r projectName
printf "\n"

# Create project directory and switch to it
mkdir $projectName
cd $projectName

# Create README.md file with project name
echo "# $projectName" > ReadMe.md

# Changelog.md
touch Changelog.md

# src Dircetory
mkdir src

# .gitignore
echo "
# JetBrains
.idea
*.iml
*.iws
*.ipr

# vs code
.vscode

# Mac OS
.DS_Store

" > .gitignore

# Initialize Git repository and make initial commit
git init
git add .
git commit -m "Initial commit"
