#!/bin/zsh

project=$1
dirname=$2

# Creating create-react-app
if [[ $project -eq "cra" ]]; then
  local Status
  Status=$(command npx create-react-app $dirname)
  if [[ $? -ne 0 ]]; then
    echo "Failed to install $project at $dirname"
  fi
elif [[ $project -eq "gatsby" ]]; then
  local Status
  Status=$(command gatsby -v)
  if [[ $? -ne 0 ]]; then
    Status=$(command npm install -g gatsby-cli)
    if [[ $? -ne 0 ]]; then
      echo "Failed to install gatsby. Please make sure npm and node are installed"
    else
      Status=$(command gatsby new dirname)
    fi
  fi
fi
