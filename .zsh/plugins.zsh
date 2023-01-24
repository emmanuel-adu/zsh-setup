# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(alias-finder brew common-aliases copyfile docker docker-compose dotenv encode64 extract git jira jsontools node npm macos urltools vscode web-search z )

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
