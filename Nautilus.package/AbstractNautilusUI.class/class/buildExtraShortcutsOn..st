shortcuts
buildExtraShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #openBrowser)
		category: #NautilusGlobalShortcuts
		default: $o command 
		do: [:target| target fullBrowse ]
		description: 'Open a new browser'.
		
	