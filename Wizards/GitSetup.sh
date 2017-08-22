#!/bin/bash
source 'base.sh'

git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
git config --global push.default simple
git config --global user.signingkey $GIT_GPG_ID
git config --global commit.gpgsign true
git config --global gpg.program gpg
git config --global core.editor nvim
