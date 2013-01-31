shortcuts
buildExtraShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #previous)
		category: #NautilusGlobalShortcuts
		default: $[ command 
		do: [:target| target fullBrowse ]
		description: 'Go back in the navigation history.'.