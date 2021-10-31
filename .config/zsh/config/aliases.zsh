alias rm='trash' # Use `trash` program instead of built-in irrecoverable way to delete nodes.
alias mkdir='mkdir --parents' # Make missing parent directories when creating folders.
alias grep='grep --color=auto --exclude-dir=".git" --exclude-dir="node_modules"' # Grep with colors and ignore common directories.
alias la='ls -l --almost-all --si' # List nodes with their details.
alias v='nvim'
alias g='git'

# Git aliases
foreach aliaskey (a b bl c co d ds dt dts f l ld r rd s sm) {
	alias g$aliaskey="git $aliaskey"
}
unset aliaskey

alias http-server="browser-sync start --config ~/.config/browsersync/config.js *"
