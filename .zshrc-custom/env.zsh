[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

export PATH=/home/plushie/Programs/static/bin:$PATH

export VISUAL=/usr/bin/nvim
export PATH=/home/plushie/.nimble/bin:$PATH

export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
export INFOPATH=$INFOPATH:/usr/local/texlive/2018/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2018/texmf-dist/doc/man

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -d $HOME/.cargo/env ]; then
    source $HOME/.cargo/env
fi

export VULKAN_SDK=$HOME/Programs/static/vulkan/1.1.101.0/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/plushie/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/plushie/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/plushie/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/plushie/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
