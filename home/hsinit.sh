#!/bin/sh
if [ ! -f $HOME/.gitconfig_local ]; then
  echo "Git user email: "
  read git_email
  echo "[user]\n email=$git_email" > $HOME/.gitconfig_local
  echo "Git user email set to $git_email"
else
  echo "Git user email already configured"
fi
echo "Homeshick initialisation complete"