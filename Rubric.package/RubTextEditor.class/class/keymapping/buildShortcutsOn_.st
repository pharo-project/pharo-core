buildShortcutsOn: aBuilder
	"We are defining the bindings twice because we want to support 
	both Cmd and Ctrl for Windows and Linux. This should happen at least as long as in the development environment
	both of these are supported.
	
	We list both variations explicitly because we want to be able to see the action code when inspecting the morph.
	"
	<keymap>
	(aBuilder shortcut: #cancel) 
		category: RubTextEditor name
		default: $l ctrl
		do: [ :target | target editor cancel ]
		description: 'Cancel unsaved editings'.
	(aBuilder shortcut: #cancelCommand) 
		category: RubTextEditor name
		default: $l command
		do: [ :target | target editor cancel ]
		description: 'Cancel unsaved editings'.
		
	(aBuilder shortcut: #accept) 
		category: RubTextEditor name
		default: $s ctrl
		do: [ :target | target editor accept ]
		description: 'Accept unsaved editings'.
	(aBuilder shortcut: #acceptCommand) 
		category: RubTextEditor name
		default: $s command
		do: [ :target | target editor accept ]
		description: 'Accept unsaved editings'.

	(aBuilder shortcut: #selectAll) 
		category: RubTextEditor name
		default: $a ctrl
		do: [ :target | target editor selectAll: nil ]
		description: 'Select all'.
	(aBuilder shortcut: #selectAllCommand) 
		category: RubTextEditor name
		default: $a command
		do: [ :target | target editor selectAll: nil ]
		description: 'Select all'.

	(aBuilder shortcut: #copySelection) 
		category: RubTextEditor name
		default: $c ctrl
		do: [ :target | target editor copySelection ]
		description: 'Copy selection'.
	(aBuilder shortcut: #copySelectionCommand) 
		category: RubTextEditor name
		default: $c command
		do: [ :target | target editor copySelection ]
		description: 'Copy selection'.

	(aBuilder shortcut: #paste) 
		category: RubTextEditor name
		default: $v ctrl
		do: [ :target | target editor paste ]
		description: 'Paste'.
	(aBuilder shortcut: #pasteCommand) 
		category: RubTextEditor name
		default: $v command
		do: [ :target | target editor paste ]
		description: 'Paste'.


	(aBuilder shortcut: #cut) 
		category: RubTextEditor name
		default: $x ctrl
		do: [ :target | target editor cut ]
		description: 'Cut selection'.
	(aBuilder shortcut: #cutCommand) 
		category: RubTextEditor name
		default: $x command
		do: [ :target | target editor cut ]
		description: 'Cut selection'.

	(aBuilder shortcut: #undo) 
		category: RubTextEditor name
		default: $z ctrl
		do: [ :target | target editor undo ]
		description: 'Undo'.
	(aBuilder shortcut: #undoCommand) 
		category: RubTextEditor name
		default: $z command
		do: [ :target | target editor undo ]
		description: 'Undo'.

	(aBuilder shortcut: #redo) 
		category: RubTextEditor name
		default: $z shift ctrl
		do: [ :target | target editor redo ]
		description: 'Redo'.
	(aBuilder shortcut: #redoCommand) 
		category: RubTextEditor name
		default: $z shift command
		do: [ :target | target editor redo ]
		description: 'Redo'.

	(aBuilder shortcut: #find) 
		category: RubTextEditor name
		default: $f ctrl
		do: [ :target | target editor find: nil ]
		description: 'Find text'.
	(aBuilder shortcut: #find) 
		category: RubTextEditor name
		default: $f command
		do: [ :target | target editor find: nil ]
		description: 'Find text'.

	(aBuilder shortcut: #findAgain) 
		category: RubTextEditor name
		default: $g ctrl
		do: [ :target | target editor findAgain: nil ]
		description: 'Find text again'.
	(aBuilder shortcut: #findAgainCommand) 
		category: RubTextEditor name
		default: $g command 
		do: [ :target | target editor findAgain: nil ]
		description: 'Find text again'.
		
	(aBuilder shortcut: #indent) 
		category: RubTextEditor name
		default: $r shift ctrl
		do: [ :target | target editor indent: nil ]
		description: 'Indent'.
	(aBuilder shortcut: #indentCommand) 
		category: RubTextEditor name
		default: $r shift command
		do: [ :target | target editor indent: nil ]
		description: 'Indent'.

	(aBuilder shortcut: #outdent) 
		category: RubTextEditor name
		default: $l shift ctrl
		do: [ :target | target editor outdent: nil ]
		description: 'Outdent'.
	(aBuilder shortcut: #outdentCommand) 
		category: RubTextEditor name
		default: $l shift command
		do: [ :target | target editor outdent: nil ]
		description: 'Outdent'.

	(aBuilder shortcut: #compareToClipboard) 
		category: RubTextEditor name
		default: $c shift ctrl
		do: [ :target | target editor compareToClipboard: nil ]
		description: 'Compare selection to clipboard'.
	(aBuilder shortcut: #compareToClipboard) 
		category: RubTextEditor name
		default: $c shift command
		do: [ :target | target editor compareToClipboard: nil ]
		description: 'Compare selection to clipboard'.
