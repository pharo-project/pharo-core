shortcuts
buildRefactoringShortcutsOn: aBuilder
	<keymap>	

	(aBuilder shortcut: #generateAccessors)
		category: #NautilusGlobalShortcuts
		default: $h command,  $a command
		do: [:target | target refactor generateAccessors ]
		description: 'Generate the accessors for the selected class'.
		
	(aBuilder shortcut: #generateSubclass)
		category: #NautilusGlobalShortcuts
		default: $h command,  $n command, $s command
		do: [:target | target refactor generateSubclass ]
		description: 'Generate a subclass for the selected class'.