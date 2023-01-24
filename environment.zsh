# Path to your oh-my-zsh installation.
export ZSH="/Users/change-to-your-user-name/.oh-my-zsh"

# NVM (Node Version Manager) is a tool for managing multiple Node.js versions.
# These lines load nvm and its bash completion, which allows for tab-completion of nvm commands.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Conda is a package and environment manager for Python.
# These lines initialize conda and add the conda binary to the PATH.
__conda_setup="$('/Users/change-to-your-user-name/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/change-to-your-user-name/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/change-to-your-user-name/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/change-to-your-user-name/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# Jenv is a tool for managing multiple Java versions.
# This line adds the jenv bin directory to the PATH and initializes jenv.
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# SDKMAN is a tool for managing parallel versions of multiple Software Development Kits on most Unix based systems.
# This line sets the directory where SDKMAN will be installed, and sources the initialization script.
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
