buildButtonsShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #showPackage)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$p command
		do: [ :target | target showGroups: false ]
		description: 'Find a class'.
			
	(aBuilder shortcut: #showGroup)
		category: #NautilusGlobalShortcuts
		default: $t command  , $g command 
		do: [ :target | target showGroups: true ]
		description: 'Find a package'.
		
	(aBuilder shortcut: #showInstanceSide)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$i command 
		do: [ :target | target showInstance: true ]
		description: 'Show instance side'.

	(aBuilder shortcut: #showClassSide)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$c command 
		do: [ :target | target showInstance: false ]
		description: 'Show class side'.

	(aBuilder shortcut: #showHierarchy)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$h command 
		do: [ :target | target showPackages: false ]
		description: 'Show Hierarchy'.
		
	(aBuilder shortcut: #showFlat)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$f command 
		do: [ :target | target showPackages: true ]
		description: 'Show normal view'.
