# zsh-setup

The repository is dedicated to optimizing and streamlining the setup of the Zsh (Z Shell) shell environment by destructing your .zshrc file into smaller files. 

- [Software Installation](#Software-installation)
- [Organizing zshrc file](#Organizing-zshrc-file)
- [Sourcing Files](#Sourcing-files)

## Software installation

If on MacOS (and Linux) I recommend using Homebrew as your as your package manager. It makes it easy to install and manage a wide variety of command-line tools and utilites. 

Before starting you should have the following Brew Formula packages. Packages can be installed by running the following command `brew install <package_name>`:
- zsh
- zsh-autosuggestions
- zsh-syntax-highlighting
- oh-my-zsh _(plugin manager, this will make your .zshrc file clean and easy to read)_

For a great guide on other softwares to include I recommend reading this article on [How to Set Up Your Mac for Web Development](https://betterprogramming.pub/how-to-set-up-your-macbook-for-web-development-in-2021-a7a1f53f6462)

## Organizing zshrc file

After installing the above packages, you will find a .zshrc hidden configuration file within your home directory. You can access the file by running your text editor (vim), or visual text editor (vscode) to open the file:

- vscode: `code .zshrc`
- vim: `vim .zshrc`

You should see an intimedating file with alot of blurb. Lets organize that!

## Sourcing files

By breaking up your .zshrc file into smaller, more manageable parts, you can organize your configuration into different areas of responsibility. This makes it easier to locate and modify specific settings later on. The following is an example of how your .zshrc file should look like:

```.zshrc
source ~/.zsh/environment.zsh
source ~/.zsh/theme.zsh
source ~/.zsh/oh-my-zsh.zsh
source ~/.zsh/plugins.zsh
source ~/.zsh/aliases.zsh
```

By sourcing these files in the order presented above, you can separate your configuration into different sections, making it easier to understand and manage. It also allows for easy sharing of specific configuration files with others. Note the `source` command simply reads and executes the content of a file so the order in which you source each files matters. 

### Creating files

1. Open the terminal and navigate to your home directory `cd ~`
2. Create a new directory called .zsh (if it doesn't exist already) `mkdir .zsh`
3. Create the source files

```shell
touch ~/.zsh/environment.zsh
touch ~/.zsh/theme.zsh
touch ~/.zsh/oh-my-zsh.zsh
touch ~/.zsh/plugins.zsh
touch ~/.zsh/aliases.zsh
```

### Purpose of each file

By sourcing these files, they are loaded and executed in the order they are sourced, allowing you to separate your configuration into different sections. I recommend always sourcing your environmental files first.

#### environmental file 

```
This file could be used to set environment variables, such as the PATH or other variables that are used by other scripts or programs. Will include things such as:

- Path to your oh-my-zsh installation
- NVM (Node Version Manager) setup
- Conda python setup
- Java package manager setup
- aws
- proxy
```


#### theme file 

```
This file would contain the configuration for the theme of your shell, like color schemes, prompt, etc.
```

#### oh-my-zsh

```
This file would contain the configuration for Oh-My-Zsh, like the plugins and themes that you want to use.

- This file should always come before your plugins as 
```

#### plugins
```
This file would contain the configuration for additional plugins that you want to use with Oh-My-Zsh.
```

#### aliases
```
This file would contain the configuration for aliases, which are shortcuts for frequently used commands.
```
