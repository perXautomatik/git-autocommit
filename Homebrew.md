# Homebrew
alias bci='brew cask install'
alias bcun='brew cask uninstall'
alias bcup='brew cask reinstall'


# misc alias
alias brewup='brew update && brew upgrade && brew cleanup'
alias brewup-cask='brew update && brew upgrade && brew cleanup && brew cask outdated | awk "{print $1}" | xargs brew cask reinstall && brew cask cleanup'

# Set our Homebrew Cask application directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

