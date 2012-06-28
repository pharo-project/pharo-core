shortcuts
buildBrowseShortcutsOn: aBuilder
<keymap>

	(aBuilder shortcut: #browseSenders)
		category: #NautilusGlobalShortcuts
		default: $b command , $n command 
		do: [:target | target browseSendersOfMessages ]
		description: 'Browse senders of the selected method'.
		
	(aBuilder shortcut: #browseClassRefs)
		category: #NautilusGlobalShortcuts
		default: $b command, $n command shift
		do: [ :target | target browseClassRefs ]
		description: 'Browse class references'.

	(aBuilder shortcut: #browseImplementors)
		category: #NautilusGlobalShortcuts
		default: $b command , $m command 
		do: [:target | target browseMessages ]
		description: 'Browse implementors of the selected method'.
	
	(aBuilder shortcut: #browseRestricted)
		category: #NautilusGlobalShortcuts
		default: $b command , $r command 
		do: [:target | target restrictedBrowse ]
		description: 'Open a restricted browser'.
		
	(aBuilder shortcut: #browseInheritance)
		category: #NautilusGlobalShortcuts
		default: $b command , $i command 
		do: [:target | target methodHierarchy ]
		description: 'Open a restricted browser'.
		
	(aBuilder shortcut: #browseFull)
		category: #NautilusGlobalShortcuts
		default: $b command , $f command 
		do: [:target | target fullBrowse ]
		description: 'Open the same browser'.		
	
	(aBuilder shortcut: #browseVersion)
		category: #NautilusGlobalShortcuts
		default: $b command , $v command 
		do: [:target | target browseVersions ]
		description: 'Browse senders of the selected method'.
