buildCopyShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #copyClass)
		category: #NautilusGlobalShortcuts
		default: $c command , $c command 
		do: [ :target | target copyClasses ]
		description: 'Copy the selected classes'.