# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

function cdls(){
    if cd "$@"; then
        ls;
    else
        echo "Error: Failed to change directory."
    fi
}

# The mkcd function is a custom command that creates a new directory and changes to it in one step.
function mkcd(){
    # Check if the directory already exists
    if [ -d "$1" ]; then
        # Change to the existing directory
        cd "$1"
    else
        # Create the new directory
        if mkdir "$1"; then
            # Change to the newly created directory
            cd "$1"
        else
            # Print an error message if the directory could not be created
            echo "Error: Failed to create or change directory."
        fi
    fi
}

