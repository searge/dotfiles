
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

export PATH=~/.npm-global/bin:$PATH

export PATH="$HOME/.cargo/bin:$PATH"

# Refactoring Ruby Path
export RUBY="$HOME/.rvm/gems/ruby-2.4.2/bin"
export RGLOB="$HOME/.rvm/gems/ruby-2.4.2@global/bin"
export RUBIES="$HOME/.rvm/rubies/ruby-2.4.2/bin"

export NODE="$HOME/.nvm/versions/node/v9.6.1/bin"

# Add RVM to PATH for scripting. 
export PATH="~/bin:$RUBY:$RGLOB:$RUBIES:$NODE:"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

