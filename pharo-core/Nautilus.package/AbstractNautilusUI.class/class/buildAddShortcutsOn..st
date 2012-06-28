shortcuts
buildAddShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #newClass)
		category: #NautilusGlobalShortcuts
		default: $n command  ,$c command 
		do: [ :target | target addClass ]
		description: 'Create a new class'.
			
	(aBuilder shortcut: #newPackage)
		category: #NautilusGlobalShortcuts
		default: $n command  , $p command 
		do: [ :target | target addPackage ]
		description: 'Create a new package'.

	(aBuilder shortcut: #newProtocol)
		category: #NautilusGlobalShortcuts
		default: $n command , $t command 
		do: [ :target | target addCategory ]
		description: 'Create a new protocol'.
		
	(aBuilder shortcut: #newGroup)
		category: #NautilusGlobalShortcuts
		default: $n command , $g command 
		do: [ :target | target addNewGroup ]
		description: 'Create a new group'.
		
"	(aBuilder shortcut: #newMethod)
		category: #NautilusGlobalShortcuts
		default: $n command , $m command 
		do: [ :target | target addMethod ]
		description: 'Create a new method'."