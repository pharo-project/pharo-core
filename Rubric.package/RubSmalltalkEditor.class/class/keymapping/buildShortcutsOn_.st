buildShortcutsOn: aBuilder
	"We are defining the bindings twice because we want to support 
	both Cmd and Ctrl for Windows and Linux. This should happen at least as long as in the development environment
	both of these are supported.
	
	We list both variations explicitly because we want to be able to see the action code when inspecting the morph.
	"

	<keymap>
	(aBuilder shortcut: #querySymbol)
		category: RubSmalltalkEditor name
		default: $q ctrl
		do: [ :target | target editor querySymbol: nil ]
		description: 'Query symbol'.
	(aBuilder shortcut: #querySymbol)
		category: RubSmalltalkEditor name
		default: $q command
		do: [ :target | target editor querySymbol: nil ]
		description: 'Query symbol'.
	(aBuilder shortcut: #browseIt)
		category: RubSmalltalkEditor name
		default: $b ctrl
		do: [ :target | target editor browseIt: nil ]
		description: 'Browse'.
	(aBuilder shortcut: #browseItCommand)
		category: RubSmalltalkEditor name
		default: $b command
		do: [ :target | target editor browseIt: nil ]
		description: 'Browse'.
	(aBuilder shortcut: #doIt)
		category: RubSmalltalkEditor name
		default: $d ctrl
		do: [ :target | target editor doIt: nil ]
		description: 'Do it'.
	(aBuilder shortcut: #doItCommand)
		category: RubSmalltalkEditor name
		default: $d command
		do: [ :target | target editor doIt: nil ]
		description: 'Do it'.
	(aBuilder shortcut: #inspectIt)
		category: RubSmalltalkEditor name
		default: $i ctrl
		do: [ :target | target editor inspectIt: nil ]
		description: 'Inspect it'.
	(aBuilder shortcut: #basicInspectIt)
		category: RubSmalltalkEditor name
		default: $i shift ctrl
		do: [ :target | target editor basicInspectIt ]
		description: 'Basic Inspect it'.
	(aBuilder shortcut: #basicInspectItCommand)
		category: RubSmalltalkEditor name
		default: $i shift command
		do: [ :target | target editor basicInspectIt ]
		description: 'Basic Inspect it'.
	(aBuilder shortcut: #inspectItCommand)
		category: RubSmalltalkEditor name
		default: $i command
		do: [ :target | target editor inspectIt: nil ]
		description: 'Inspect it'.
	(aBuilder shortcut: #implementorsOfIt)
		category: RubSmalltalkEditor name
		default: $m ctrl
		do: [ :target | target editor implementorsOfIt: nil ]
		description: 'Implementors of it'.
	(aBuilder shortcut: #implementorsOfItCommand)
		category: RubSmalltalkEditor name
		default: $m command
		do: [ :target | target editor implementorsOfIt: nil ]
		description: 'Implementors of it'.
	(aBuilder shortcut: #senderOfIt)
		category: RubSmalltalkEditor name
		default: $n ctrl
		do: [ :target | target editor sendersOfIt: nil ]
		description: 'Senders of it'.
	(aBuilder shortcut: #senderOfItCommand)
		category: RubSmalltalkEditor name
		default: $n command
		do: [ :target | target editor sendersOfIt: nil ]
		description: 'Senders of it'.
	(aBuilder shortcut: #printIt)
		category: RubSmalltalkEditor name
		default: $p ctrl
		do: [ :target | target editor printIt ]
		description: 'Print it'.
	(aBuilder shortcut: #printItCommand)
		category: RubSmalltalkEditor name
		default: $p command
		do: [ :target | target editor printIt ]
		description: 'Print it'.
	(aBuilder shortcut: #debugIt)
		category: RubSmalltalkEditor name
		default: $d shift ctrl
		do: [ :target | target editor debugIt: nil ]
		description: 'Debug it'.
	(aBuilder shortcut: #debugItCommand)
		category: RubSmalltalkEditor name
		default: $d shift command
		do: [ :target | target editor debugIt: nil ]
		description: 'Debug it'.
	(aBuilder shortcut: #referencesToIt)
		category: RubSmalltalkEditor name
		default: $n shift ctrl
		do: [ :target | target editor referencesToIt: nil ]
		description: 'References to it'.
	(aBuilder shortcut: #referencesToItCommand)
		category: RubSmalltalkEditor name
		default: $n shift command
		do: [ :target | target editor referencesToIt: nil ]
		description: 'References to it'.
	(aBuilder shortcut: #methodStringsContainingIt)
		category: RubSmalltalkEditor name
		default: $e shift ctrl | $e shift command mac
		do: [ :target | target editor methodStringsContainingIt: nil ]
		description: 'Method strings containing it'.
	(aBuilder shortcut: #methodStringsContainingItCommand)
		category: RubSmalltalkEditor name
		default: $e shift command
		do: [ :target | target editor methodStringsContainingIt: nil ]
		description: 'Method strings containing it'.
	(aBuilder shortcut: #format)
		category: RubSmalltalkEditor name
		default: PharoShortcuts current formatCodeShortcut
		do: [ :target | target formatMethodCode ]