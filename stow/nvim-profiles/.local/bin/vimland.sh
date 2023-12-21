#!/bin/sh

NVIM_PROFILE_NAME="vimland"
NVIM_INIT_FILE="init.lua"
NVIM_COMMAND="nvim"

if ! [ -d $HOME/.local/share/nvim-profiles/${NVIM_PROFILE_NAME} ]; then
    mkdir -p $HOME/.local/share/nvim-profiles/${NVIM_PROFILE_NAME}
fi

if ! [ -d $HOME/.cache/nvim-profiles/${NVIM_PROFILE_NAME} ]; then
    mkdir -p $HOME/.cache/nvim-profiles/${NVIM_PROFILE_NAME}
fi

exec env XDG_CONFIG_HOME="$HOME/.config/nvim-profiles/${NVIM_PROFILE_NAME}" \
         XDG_DATA_HOME="$HOME/.local/share/nvim-profiles/${NVIM_PROFILE_NAME}" \
         XDG_CACHE_HOME="$HOME/.cache/nvim-profiles/${NVIM_PROFILE_NAME}" \
         ${NVIM_COMMAND} $@ # \
         #${NVIM_COMMAND} -u "$HOME/.config/nvim-profiles/${NVIM_PROFILE_NAME}/nvim/${NVIM_INIT_FILE}"\
         #"$@"
