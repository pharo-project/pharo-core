buildEditorCommentKeymappingsOn: aBuilder

	(aBuilder shortcut: #selectAll) 
		category: #NautilusCommentShortcuts
		default: $a command
		do: [ :target | target commentTextArea handleEdit: [ target commentTextArea selectAll ] ].
		
	(aBuilder shortcut: #copySelection) 
		category: #NautilusCommentShortcuts
		default: $c command
		do: [ :target | target commentTextArea copySelection ].
		
	(aBuilder shortcut: #find) 
		category: #NautilusCommentShortcuts
		default: $f command, $f command
		do: [ :target | target commentTextArea find ].
		
	(aBuilder shortcut: #findAgain) 
		category: #NautilusCommentShortcuts
		default:  $f command, $g command
		do: [ :target | target commentTextArea findAgain ].
		
	(aBuilder shortcut: #setSearchString)
		category: #NautilusCommentShortcuts
		default: $h command
		do: [ :target | target commentTextArea setSearchString ].
		
	(aBuilder shortcut: #cancel) 
		category: #NautilusCommentShortcuts
		default: $l command
		do: [ :target | target commentTextArea cancelWithoutConfirmation ].
		
	(aBuilder shortcut: #paste) 
		category: #NautilusCommentShortcuts
		default: $v command
		do: [ :target | target commentTextArea paste ].
		
	(aBuilder shortcut: #cut) 
		category: #NautilusCommentShortcuts
		default: $x command
		do: [ :target | target commentTextArea cut ].
				
	(aBuilder shortcut: #undo) 
		category: #NautilusCommentShortcuts
		default: $z command
		do: [ :target | target commentTextArea undo ].
		
	(aBuilder shortcut: #redo) 
		category: #NautilusCommentShortcuts
		default: $z command shift
		do: [ :target | target commentTextArea redo ].
	
	(aBuilder shortcut: #cursorHome)
		category: #NautilusCommentShortcuts
		default: Character home command
		do: [ :target :morph :event | target commentTextArea cursorHome: event ].
	
	(aBuilder shortcut: #cursorEnd)
		category: #NautilusCommentShortcuts
		default: Character end command
		do: [ :target :morph :event | target commentTextArea cursorEnd: event ].

	(aBuilder shortcut: #browseIt) 
		category: #NautilusCommentShortcuts
		default: $b command
		do: [ :target | target commentTextArea browseIt ].
				
	(aBuilder shortcut: #doIt) 
		category: #NautilusCommentShortcuts
		default: $d command
		do: [ :target | target commentTextArea doIt ].

	(aBuilder shortcut: #inspectIt) 
		category: #NautilusCommentShortcuts
		default: $i command
		do: [ :target | target commentTextArea inspectIt ].
		
	(aBuilder shortcut: #implementorsOfIt) 
		category: #NautilusCommentShortcuts
		default: $m command
		do: [ :target | target commentTextArea implementorsOfIt ].
		
	(aBuilder shortcut: #sendersOfIt)
		category: #NautilusCommentShortcuts
		default: $n command
		do: [ :target | target commentTextArea sendersOfIt ].

	(aBuilder shortcut: #printIt) 
		category: #NautilusCommentShortcuts
		default: $p command
		do: [ :target | target commentTextArea printIt ].