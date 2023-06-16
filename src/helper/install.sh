#!/bin/sh
set -e

echo "Activating feature 'azure devops login helper'"

wget -O "$(dirname $0)/gcm-linux_amd64.2.1.2.deb" https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.1.2/gcm-linux_amd64.2.1.2.deb
dpkg -i "$(dirname $0)/gcm-linux_amd64.2.1.2.deb"
git-credential-manager configure
git config --global credential.credentialStore plaintext
rm -rf "$(dirname $0)/gcm-linux_amd64.2.1.2.deb"
