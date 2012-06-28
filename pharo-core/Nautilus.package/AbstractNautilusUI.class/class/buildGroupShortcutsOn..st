shortcut-old
buildGroupShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #fullBrowse)
		category: #NautilusGroupShortcuts
		default: $b command
		do: [ :target | target fullBrowse ]
		description: 'Open a new browser on the current selection'.
		
	(aBuilder shortcut: #restrictedBrowseGroup)
		category: #NautilusGroupShortcuts
		default: $b command shift
		do: [ :target | target  restrictedBrowseGroup: target selectedGroups ]
		description: 'Open a browser on a restricted view'.
	
	(aBuilder shortcut: #findClass)
		category: #NautilusGroupShortcuts
		default: $f command
		do: [ :target | target findClass ]
		description: 'Find a class'.
		
	(aBuilder shortcut: #addNewGroup)
		category: #NautilusGroupShortcuts
		default: $n command
		do: [ :target | target addNewGroup ]
		description: 'Create a new group'.
	
	(aBuilder shortcut: #renameGroup)
		category: #NautilusGroupShortcuts
		default: $r command
		do: [ :target | target enableSingleMenuItems ifTrue:[ target renameGroup ]]
		description: 'Rename the selected group'.
	
	(aBuilder shortcut: #runTestsOfGroups)
		category: #NautilusGroupShortcuts
		default: $t command
		do: [ :target | target runTestsOfGroups: target selectedGroups notifying: true ]
		description: 'Run the tests of the selected groups'.
		
	(aBuilder shortcut: #removeGroups)
		category: #NautilusGroupShortcuts
		default: $x command
		do: [ :target | target removeGroups ]
		description: 'Remove the selected groups'.