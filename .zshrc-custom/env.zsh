[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export VISUAL=/usr/bin/nvim
export PATH=/home/plushie/.nimble/bin:$PATH

export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
export INFOPATH=$INFOPATH:/usr/local/texlive/2018/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2018/texmf-dist/doc/man

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -d $HOME/.cargo/env ]; then
    source $HOME/.cargo/env
fi

export VULKAN_SDK=$HOME/Programs/static/vulkan/1.1.101.0/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d
