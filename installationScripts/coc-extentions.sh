#!/bin/bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets coc-python coc-tsserver coc-explorer coc-html coc-css coc-json coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-bookmark coc-clangd coc-cmake coc-cssmodules coc-emmet coc-eslint coc-floaterm coc-flutter --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-bookmark coc-fzf-preview coc-git coc-gist coc-emmet coc-graphql coc-markdownlint --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-phpls coc-phpactor coc-rls coc-rome coc-rust-analyzer coc-sh coc-sql --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
npm install coc-svelte coc-svg coc-tabnine coc-tailwindcss coc-todolist coc-tsserver coc-vetur coc-vimlsp coc-xml coc-yank --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
