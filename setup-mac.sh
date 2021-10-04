#!/bin/bash

mkdir -p ~/Documents/scripts
mkdir -p ~/Documents/personal

brew install -y zsh
brew install --cask -y iterm2 spotify isual-studio-code postman chrome whatsapp docker discord slack

cat >> ~/.zshc << EOF
lias tf='terraform'
alias gc='gcloud'
alias k='kubectl'
EOF


