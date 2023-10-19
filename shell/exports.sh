# ------------------------------------------------------------------------------
# Codely theme config
# ------------------------------------------------------------------------------
export CODELY_THEME_MINIMAL=false
export CODELY_THEME_MODE="dark"
export CODELY_THEME_PROMPT_IN_NEW_LINE=false
export CODELY_THEME_PWD_MODE="short" # full, short, home_relative

# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------
export GEM_HOME="$HOME/.gem"
export RBENV_PATH="$HOME/.rbenv"
# export CARGO_PATH="$HOME/.cargo"
# export GO_PATH="$HOME/.go"
# export NVM_DIR="$HOME/.nvm"
# export PYTHON_PATH="$HOME/.conda"
# export JAVA_HOME='/Library/Java/JavaVirtualMachines/amazon-corretto-15.jdk/Contents/Home'

# ------------------------------------------------------------------------------
# Apps
# ------------------------------------------------------------------------------
if [ "$CODELY_THEME_MODE" = "dark" ]; then
	fzf_colors="pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934"
else
	fzf_colors="pointer:#db0f35,bg+:#d6d6d6,fg:#808080,fg+:#363636,hl:#8ec07c,info:#928374,header:#fffee3"
fi

export FZF_DEFAULT_OPTS="--color=$fzf_colors --reverse"

# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
path=(
  # User session binaries
  # Own or 3rd-party binary and scripts allowed for session user.
  "$HOME/bin"

  # Custom user Binary and Settings
  "$DOTLY_PATH/bin"
  "$DOTFILES_PATH/bin"

  # Languages Binary
  # --- Ruby ------------------------------------ #
  "$GEM_HOME/bin"
  "$RBENV_PATH/shims/ruby"

  # --- Rust ------------------------------------ #
  # "$CARGO_PATH/bin"

  # --- Go Lang --------------------------------- #
  # "$GO_PATH/bin"

  # --- Node ------------------------------------ #
  # "$NVM_DIR/bin"

  # --- Python ---------------------------------- #
  # "$PYTHON_PATH/bin"

  # --- Java ------------------------------------ #
  # "$JAVA_HOME/bin"

  #-----------------------------------------------------------------
  # Additional tools and software 
  #-----------------------------------------------------------------
  # Brew Home for arm64 (Apple Silicon M1 or higher)
  "/opt/homebrew/bin"

  # Brew Home for i386 (Intel)
  # It is traditionally used on UNIX systems for local software that is
  # installed outside of the system's standard package management.
  "/usr/local/bin"

  # Similar to /usr/local/bin but for binaries that run as root.
  "/usr/local/sbin"

  #-----------------------------------------------------------------
  # OS binaries at the end 
  # To ensure that the base programs are available if custom or
  # additional versions are not.
  #-----------------------------------------------------------------
  # Essential binaries required for user mode boot and system repair.
  "/bin"

  # Standard OS binaries.
  "/usr/bin"

  # Standard OS binaries that run as root.
  # Operating system binaries that are generally run as superuser.
  "/usr/sbin"

  # Essential binaries that are required for system boot and repair, usually run as superuser.
  "/sbin"
  "$path"
)

export path
