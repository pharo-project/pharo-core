shortcut-old
buildCommentShortcutsOn: aBuilder
	<keymap>	

	self buildEditorCommentKeymappingsOn: aBuilder.
	(aBuilder shortcut: #runTest)
		category: #NautilusCommentShortcuts
		default: $j command, $m command
		do: [:target |
				(target selectedMethod isTestMethod and: [ target commentTextArea hasUnacceptedEdits not ])
					ifTrue: [ target runTestForAMethod: target selectedMethod notifying: true
				]]
		description: 'Run the current test method'.
		
	(aBuilder shortcut: #findClass)
		category: #NautilusCommentShortcuts
		default: $f command, $c command 
		do: [:target | target findClass ]
		description: 'Find class'.