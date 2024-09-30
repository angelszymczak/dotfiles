#!/usr/bin/env zsh

# ------------------------------------------------------------------------------
# Theme config
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Languages
# ------------------------------------------------------------------------------

# Ruby
# export GEM_HOME="$HOME/.gem"
# export RBENV_PATH="$HOME/.rbenv"

# Rust
export CARGO_PATH="$HOME/.cargo"


# ------------------------------------------------------------------------------
# CLI Apps config
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# Path - The higher it is, the more priority it has
# ------------------------------------------------------------------------------
path=(
  # --------------------------------------------- #
  # User session binaries
  # --------------------------------------------- #

  # Own or 3rd-party binary and scripts allowed for session user.
  "$HOME/bin"

  # Custom user Binary and Settings
  # "$DOTFILES_PATH/bin"

  # ---------------------------------------------------------------------------
  # Languages Binary
  # ---------------------------------------------------------------------------

  #-----------------------------------------------------------------
  # Additional tools and software 
  #-----------------------------------------------------------------
  "/opt/homebrew/opt/curl/bin"

  # Brew Home for arm64 (Apple Silicon M1 or higher)
  "/opt/homebrew/opt"
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"

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
  "$PATH"
)

export path

export EDITOR=nvim

# -------------------
# Curl
# -------------------
# For compilers to find curl you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# For pkg-config to find curl you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

# zsh completions have been installed to:
# /opt/homebrew/opt/curl/share/zsh/site-functions

# -----------------------------------------------------------------------------
# Ollama Server Support for LLM Models interpreter
# -----------------------------------------------------------------------------
export OLLAMA_SERVER="127.0.0.1"
export OLLAMA_PORT="11434"
export OLLAMA_HOST="${OLLAMA_SERVER}:${OLLAMA_PORT}"

export LLM_MODEL_CODENAME="qwen"
export LLM_MODEL_VERSION="2.5"
export LLM_MODEL_RELEASE="coder"
export LLM_MODEL_TAG="7b"

export LLM_MODEL="${LLM_MODEL_CODENAME}${LLM_MODEL_VERSION}-${LLM_MODEL_RELEASE}:${LLM_MODEL_TAG}"
