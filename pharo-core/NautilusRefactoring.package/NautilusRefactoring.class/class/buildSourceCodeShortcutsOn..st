shortcuts
buildSourceCodeShortcutsOn: aBuilder
	<keymap>	

	(aBuilder shortcut: #rename)
		category: #NautilusSourceCodeShortcuts
		default: $r command
		do: [:target | (target sourceTextArea hasUnacceptedEdits not)
							ifTrue: [ target refactor renameTextSelection ]]
		description: 'Rename the current selection'.
		
	(aBuilder shortcut: #extractToTemp)
		category: #NautilusSourceCodeShortcuts
		default: $x command shift
		do: [:target | (target sourceTextArea hasUnacceptedEdits not)
							ifTrue: [ target refactor extractToTempTextSelection ]]
		description: 'Extract to temp the current selection'.
		
	(aBuilder shortcut: #extractToMethod)
		category: #NautilusSourceCodeShortcuts
		default: $m command shift
		do: [:target | (target sourceTextArea hasUnacceptedEdits not)
							ifTrue: [ target refactor extractToMethodTextSelection ]]
		description: 'Extract to method the current selection'.