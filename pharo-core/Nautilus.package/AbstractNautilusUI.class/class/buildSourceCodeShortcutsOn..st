shortcuts
buildSourceCodeShortcutsOn: aBuilder
	<keymap>	

	(aBuilder shortcut: #runTest)
		category: #NautilusSourceCodeShortcuts
		default: $t command
		do: [:target |
				((target selectedClass inheritsFrom: TestCase) and: [ (target selectedMethod selector beginsWith: 'test') and: [ target sourceTextArea hasUnacceptedEdits not ]])
					ifTrue: [ target runTestForAMethod: target selectedMethod notifying: true
				]]
		description: 'Run the current test method'.
		
	(aBuilder shortcut: #findClass)
		category: #NautilusSourceCodeShortcuts
		default: $c command shift
		do: [:target | target findClass ]
		description: 'Find class'.
		
	"(aBuilder shortcut: #implementSelector)
		category: #NautilusSourceCodeShortcuts
		default: $i command shift
		do: [:target | target sourceTextArea hasUnacceptedEdits not
						ifTrue: [ target implementSelector ]]
		description: 'Implement the current selected selector'."
	
	