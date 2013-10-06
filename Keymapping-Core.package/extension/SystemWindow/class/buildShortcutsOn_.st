buildShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #close)
		category: #WindowShortcuts
		default: $w ctrl | $w command mac
		do: [ :target | target close ]
		description: 'Close this window'.