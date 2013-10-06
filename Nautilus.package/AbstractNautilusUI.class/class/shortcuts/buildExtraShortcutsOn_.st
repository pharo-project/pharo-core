buildExtraShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #openBrowser)
		category: #NautilusGlobalShortcuts
		default: $o command, $o command
		do: [:target| target fullBrowse ]
		description: 'Open a new browser'.
		
	
	(aBuilder shortcut: #openBrowserOnSubclass)
		category: #NautilusGlobalShortcuts
		default: $o command, $s command
		do: [:target| target openSubclass ]
		description: 'Open a new browser on a subclass'.
		
		
	(aBuilder shortcut: #openBrowserOnSuperclass)
		category: #NautilusGlobalShortcuts
		default: $o command, $s command shift
		do: [:target| target openSuperclass ]
		description: 'Open a new browser on a superclass'.
		
	(aBuilder shortcut: #openBrowserOnClass)
		category: #NautilusGlobalShortcuts
		default: $o command, $c command
		do: [:target| target openClass ]
		description: 'Open a new browser on a class'.
	