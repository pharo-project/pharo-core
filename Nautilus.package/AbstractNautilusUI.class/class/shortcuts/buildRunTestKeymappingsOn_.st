buildRunTestKeymappingsOn: aBuilder
	<keymap>
	(aBuilder shortcut: #runTestForClasses)
		category: #NautilusGlobalShortcuts
		default: $j command , $c command
		do: [ :target | target runClassTests ]
		description: 'runTestFor the selected classes'.
	(aBuilder shortcut: #runTestForPackages)
		category: #NautilusGlobalShortcuts
		default: $j command , $p command
		do: [ :target | target runPackagesTestsNotifying: true ]
		description: 'runTestFor the selected packages'.
	(aBuilder shortcut: #runTestForMethods)
		category: #NautilusGlobalShortcuts
		default: $j command , $m command
		do: [ :target | target runTestForMethods: target selectedMethods notifying: true ]
		description: 'runTestFor the selected methods'