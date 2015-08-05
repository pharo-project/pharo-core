buildButtonsShortcutsOn: aBuilder
	<keymap>

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
		do: [ :target | target showHierarchy: true ]
		description: 'Show Hierarchy'.
		
	(aBuilder shortcut: #showFlat)
		category: #NautilusGlobalShortcuts
		default: $t command  ,$f command 
		do: [ :target | target showHierarchy: false ]
		description: 'Show normal view'.
