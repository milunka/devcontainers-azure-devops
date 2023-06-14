#!/bin/sh
set -e

echo "Activating feature 'azure devops login helper'"

dpkg -i "$(dirname $0)/gcm-linux_amd64.2.1.2.deb"
git-credential-manager configure
git config --global credential.credentialStore plaintext
