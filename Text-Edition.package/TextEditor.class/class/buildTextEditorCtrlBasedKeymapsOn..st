shortcuts
buildTextEditorCtrlBasedKeymapsOn: aBuilder
		
	(aBuilder shortcut: #selectAll) 
		category: #TextEditor
		default: $a ctrl
		do: [ :target | target handleEdit: [ target selectAll ] ].
		
	(aBuilder shortcut: #copySelection) 
		category: #TextEditor
		default: $c ctrl
		do: [ :target | target copySelection ].
		
	(aBuilder shortcut: #find) 
		category: #TextEditor
		default: $f ctrl
		do: [ :target | target find ].
		
	(aBuilder shortcut: #findAgain) 
		category: #TextEditor
		default: $g ctrl
		do: [ :target | target findAgain ].
		
	(aBuilder shortcut: #setSearchString)
		category: #TextEditor
		default: $h ctrl
		do: [ :target | target setSearchString ].
		
	(aBuilder shortcut: #cancel) 
		category: #TextEditor
		default: $l ctrl
		do: [ :target | target cancel ].
		
	(aBuilder shortcut: #paste) 
		category: #TextEditor
		default: $v ctrl
		do: [ :target | target paste ].
		
	(aBuilder shortcut: #cut) 
		category: #TextEditor
		default: $x ctrl
		do: [ :target | target cut ].
				
	(aBuilder shortcut: #undo) 
		category: #TextEditor
		default: $z ctrl
		do: [ :target | target undo ].
		
	(aBuilder shortcut: #redo) 
		category: #TextEditor
		default: $z ctrl shift
		do: [ :target | target redo ].
	
	(aBuilder shortcut: #cursorHome)
		category: #TextEditor
		default: Character home ctrl
		do: [ :target :morph :event | target cursorHome: event ].
	
	(aBuilder shortcut: #cursorEnd)
		category: #TextEditor
		default: Character end ctrl
		do: [ :target :morph :event | target cursorEnd: event ].