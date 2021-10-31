# Add prompt to fpath.
if [[ -d "$ZDOTDIR/plugins/pure" ]] {
  fpath=($fpath "$ZDOTDIR/plugins/pure")
} else {
  return 1
}

# Initialize the prompt system.
promptinit

# Prompt theme.
prompt pure

# Prompt styles.
zstyle :prompt:pure:prompt:error color 1
zstyle :prompt:pure:prompt:success color 15

zstyle :prompt:pure:path color '#a29bfe'
zstyle :prompt:pure:prompt:success color '#636e72'

export PURE_PROMPT_SYMBOL='🌸'
