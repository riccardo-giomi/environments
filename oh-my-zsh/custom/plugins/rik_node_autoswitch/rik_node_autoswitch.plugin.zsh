autoload -U add-zsh-hook
load-node-version() {
  if [[ -f .node-version && -r .node-version ]]; then
    local new_version=$(<.node-version)
    if [[ "$(nvm version)" != "$new_version" ]]; then
      nvm use $new_version
    fi
  fi
}
# If using zsh-nvm make sure NVM_AUTO_USE is not enabled.
# Place this after nvm initialization!
node-use-file-version() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ -f .node-version && -r .node-version ]]; then
    load-node-version
  elif [[ "$(nvm version)" != "$(nvm version default)" ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd node-use-file-version
node-use-file-version

