#!/bin/bash
source 'base.sh'

git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
git config --global push.default simple
git config --global user.signingkey $GIT_GPG_ID
git config --global commit.gpgsign true
git config --global gpg.program gpg
git config --global core.editor nvim
git config --global core.excludesfile $CONFIG_DIR/gitignore_global

gpg --allow-secret-key-import --import "$GPG_KEY"
mkdir -p ~/.gnupg
cp $CONFIG_DIR/gpg-agent.conf ~/.gnupg/

# diff so fancy settings
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
git config --bool --global diff-so-fancy.markEmptyLines false


