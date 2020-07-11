source ~/.zplug/init.zsh
source ~/.zshrc-custom/keys.zsh
source ~/.zshrc-custom/env.zsh
source ~/.zshrc-custom/general.zsh
source ~/.zshrc-custom/plugins.zsh
source ~/.zshrc-custom/aliases.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/plushie/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/plushie/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/plushie/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/plushie/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
