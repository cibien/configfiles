export ZSH=/Users/cesarecibien/.oh-my-zsh

ZSH_THEME=""
DEFAULT_USER=`whoami`

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  pip
  python
  pyenv
  brew
  osx
  go
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U promptinit; promptinit
prompt pure

### Added by Zplugin's installer
source '/Users/cesarecibien/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-completions
