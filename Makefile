install:
	stow -v --target=$$HOME --ignore='.*\.secret' -R */

uninstall:
	stow -v --target=$$HOME --ignore='.*\.secret' -D */
