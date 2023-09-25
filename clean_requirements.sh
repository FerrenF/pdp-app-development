#!/bin/bash

# Uninstall Docker
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo rm -rf /etc/apt/keyrings/docker.gpg
sudo rm /etc/apt/sources.list.d/docker.list
sudo apt-get autoremove -y
sudo apt-get clean

# Uninstall NVM and Node.js
nvm deactivate
nvm uninstall node
rm -rf ~/.nvm
unset NVM_DIR
bash ~/.nvm/nvm.sh
nvm unload

# Remove NVM installation script
rm -rf ~/.nvm/nvm.sh
rm -rf ~/.nvm/bash_completion

# Remove NVM from shell profile (e.g., .bashrc or .zshrc)
sed -i '/nvm/d' ~/.bashrc
# If you use zsh, replace .bashrc with .zshrc in the above line

echo "Uninstallation completed."