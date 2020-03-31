# fcivaner's dotfiles

My dotfiles for Ubuntu Linux and OSX.
It includes bash configuration, aliases, scripts, git configuration, configuration for other tools such as vscode along with some structure for flexibility and extendability.

## Usage

#### Bootstrapping

To bootstrap (Install the tools & environment for the first time) use the __install.sh__. This will install the command line and GUI tools, also configure their plugins.

#### Configuring

To use the dotfiles, run __configure.sh__.
This symlinks the dotfiles to your home directory using stow, and does adjustments based on scripts that reside in the configure-scripts directory.

#### Utilities

There are also some utility scripts under __util/__ to make configuration for dotfiles and install scripts easier.

If you don't want to/can't use stow/symlinks, you can use these utility scripts to get diffs between your system and the repository and to copy the changes back to the repository.

#### Linting

__shellcheck.sh__ can be used to check every script in the repository for common mistakes and conventions.

#### Suggestions

Any suggestions/comments will be very appreciated. Feel free to contact me or open an issue!
