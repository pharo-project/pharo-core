buildRefactoringShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #generateInitialize)
		category: #NautilusGlobalShortcuts
		default: $h command, $i command 
		do: [ :target | target generateInitialize ]
		description: 'Generate the initialize method'.
		
	(aBuilder shortcut: #forceGenerateInitialize)
		category: #NautilusGlobalShortcuts
		default: $h command, $k command
		do: [ :target | target forceGenerateInitialize ]
		description: 'Regenerate the initialize method'.
		
	(aBuilder shortcut: #createTestForSelectedClass)
		category: #NautilusGlobalShortcuts
		default: $n command, $j command, $c command
		do: [ :target | target enableSingleClassSelection ifTrue: [ target createTestForSelectedClass ]]
		description: 'Generate a test class for the selected class'.
		
	(aBuilder shortcut: #generateTestAndJump)
		category: #NautilusGlobalShortcuts
		default: $h command, $j command
		do: [ :target | target generateTestMethodsAndFocus: true ]
		description: 'Generate test and jump'.
		
	(aBuilder shortcut: #generateTest)
		category: #NautilusGlobalShortcuts
		default: $h command, $j command shift
		do: [ :target | target generateTestMethodsAndFocus: false ]
		description: 'Generate test'.
		
	(aBuilder shortcut: #categorizeAllUncategorized)
		category: #NautilusGlobalShortcuts
		default: $h command, $c command shift
		do: [ :target | target categorizeAllUncategorizedMethods ]
		description: 'Categorize all uncategorized'.