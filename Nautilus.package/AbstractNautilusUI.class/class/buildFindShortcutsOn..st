shortcuts
buildFindShortcutsOn: aBuilder
<keymap>

	(aBuilder shortcut: #findClass)
		category: #NautilusGlobalShortcuts
		default: $f command  ,$c command 
		do: [ :target | target findClass ]
		description: 'Find a class'.
			
	(aBuilder shortcut: #findPackage)
		category: #NautilusGlobalShortcuts
		default: $f command  , $p command 
		do: [ :target | target findPackage ]
		description: 'Find a package'.
		
	(aBuilder shortcut: #findProtocol)
		category: #NautilusGlobalShortcuts
		default: $f command  , $t command 
		do: [ :target | target findProtocol ]
		description: 'Find a protocol'.
		
	(aBuilder shortcut: #findMethod)
		category: #NautilusGlobalShortcuts
		default: $f command , $m command 
		do: [ :target | target findMethod ]
		description: 'Find a method'.