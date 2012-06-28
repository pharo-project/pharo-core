shortcuts
buildRunTestKeymappingsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #runTestForClasses)
		category: #NautilusGlobalShortcuts
		default: $j command  ,$c command 
		do: [ :target | target runClassTests ]
		description: 'runTestFor the selected classes'.
			
	(aBuilder shortcut: #runTestForPackages)
		category: #NautilusGlobalShortcuts
		default: $j command  , $p command 
		do: [ :target | target runPackagesTestsNotifying: true ]
		description: 'runTestFor the selected packages'.
		
	(aBuilder shortcut: #runTestForGroups)
		category: #NautilusGlobalShortcuts
		default: $j command  , $g command 
		do: [ :target | target runTestsOfGroups: target selectedGroups notifying: true ]
		description: 'runTestFor the selected groups'.
		
	(aBuilder shortcut: #runTestForMethods)
		category: #NautilusGlobalShortcuts
		default: $j command , $m command 
		do: [ :target |  target runTestForMethods: target selectedMethods notifying: true ]
		description: 'runTestFor the selected methods'.