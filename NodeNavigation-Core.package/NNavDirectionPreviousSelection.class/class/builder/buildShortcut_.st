buildShortcut: aBuilder
	<keymap>

	(aBuilder shortcut: #previousSelection)
		category: #SmalltalkEditor
		default: $b command shift mac| $b ctrl shift unix | $b ctrl shift 
		do: [ :morph | morph standOutPreviousSelection ]
		description: 'Select the previous selected scope'