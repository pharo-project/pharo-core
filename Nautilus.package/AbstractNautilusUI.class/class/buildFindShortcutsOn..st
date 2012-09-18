shortcuts
buildFindShortcutsOn: aBuilder
<keymap>

	(aBuilder shortcut: #findClass)
		category: #NautilusGlobalShortcuts
		default: $f command , $c command 
		do: [ :target | target findClass ]
		description: 'Find a class'.
	
	(aBuilder shortcut: #findClassInHierarchy)
		category: #NautilusGlobalShortcuts
		default: $f command , $h command 
		do: [ :target | target findClassInHierarchy ]
		description: 'Find a class in the hierarchy'.
		
	(aBuilder shortcut: #findSuperclass)
		category: #NautilusGlobalShortcuts
		default: $f command , $S shift command 
		do: [ :target | target findSuperclass]
		description: 'Find a superclass'.
		
	(aBuilder shortcut: #findSubclass)
		category: #NautilusGlobalShortcuts
		default: $f command , $s command 
		do: [ :target | target findSubclass]
		description: 'Find a subclass'.
		
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
	
	(aBuilder shortcut: #findRespondingMethod)
		category: #NautilusGlobalShortcuts
		default: $f command, $M shift command 
		do: [ :target | target findAllMethod ]
		description: 'Find methods instances of this class may respond to'.