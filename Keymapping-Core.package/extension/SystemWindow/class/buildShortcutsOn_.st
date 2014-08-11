buildShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #close)
		category: #WindowShortcuts
		default: PharoShortcuts current closeWindowShortcut
		do: [ :target | target close ]
		description: 'Close this window'.