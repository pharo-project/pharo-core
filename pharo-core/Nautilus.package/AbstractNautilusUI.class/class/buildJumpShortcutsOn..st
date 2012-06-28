shortcuts
buildJumpShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #jumpToClass)
		category: #NautilusGlobalShortcuts
		default: $g command  ,$c command 
		do: [ :target | target giveFocusToClass ]
		description: 'Jump to the selected class'.
			
	(aBuilder shortcut: #jumpToPackage)
		category: #NautilusGlobalShortcuts
		default: $g command  , $p command 
		do: [ :target | target giveFocusToPackage ]
		description: 'Jump to the selected package'.

	(aBuilder shortcut: #jumpToProtocol)
		category: #NautilusGlobalShortcuts
		default: $g command , $t command 
		do: [ :target | target giveFocusToProtocol ]
		description: 'Jump to the selected protocol'.
		
	(aBuilder shortcut: #jumpToMethod)
		category: #NautilusGlobalShortcuts
		default: $g command , $m command  
		do: [ :target | target giveFocusToMethod ]
		description: 'Jump to the selected method'.
		
	(aBuilder shortcut: #jumpToSourceCode)
		category: #NautilusGlobalShortcuts
		default: $g command , $s command  
		do: [ :target | target giveFocusToSourceCode ]
		description: 'Jump to the selected method'.
		
	(aBuilder shortcut: #jumpToTestClass)
		category: #NautilusGlobalShortcuts
		default: $g command , $j command , $c command
		do: [ :target | target createTestForSelectedClass ]
		description: 'Jump to test class'.