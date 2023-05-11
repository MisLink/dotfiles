install:
	stow --target=$(HOME) --no-folding --ignore="\.secret" -v -R */

uninstall:
	stow --target=$(HOME) --no-folding --ignore="\.secret" -v -D */
