install:
	stow -v --target=$$HOME -R */

uninstall:
	stow -v --target=$$HOME -D */
