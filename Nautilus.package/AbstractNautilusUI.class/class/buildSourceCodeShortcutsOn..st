shortcut-old
buildSourceCodeShortcutsOn: aBuilder
	<keymap>	

	self buildEditorKeymappingsOn: aBuilder.
	(aBuilder shortcut: #runTest)
		category: #NautilusSourceCodeShortcuts
		default: $j command, $m command
		do: [:target |
				(target selectedMethod isTestMethod and: [ target sourceTextArea hasUnacceptedEdits not ])
					ifTrue: [ target runTestForAMethod: target selectedMethod notifying: true
				]]
		description: 'Run the current test method'.
		
	"This is not working anyway"
	"(aBuilder shortcut: #findClass)
		category: #NautilusSourceCodeShortcuts
		default: $f command, $c command 
		do: [:target | target findClass ]
		description: 'Find class'."