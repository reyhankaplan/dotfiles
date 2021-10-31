foreach file (
	load.zsh
	exports.zsh
	aliases.zsh
	functions.zsh
	prompt.zsh
	settings.zsh
	widgets.zsh
	mappings.zsh
	plugins.zsh
) {
	source $ZDOTDIR/config/$file
}
