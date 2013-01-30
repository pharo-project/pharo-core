shortcuts
buildTextEditorShortcutsOn: aBuilder
	<keymap>
	(aBuilder shortcut: #selectAll) 
		category: #TextEditor
		shortcut: $a ctrl win | $a ctrl unix | $a command mac
		do: [ :target | target handleEdit: [ target selectAll ] ].

	(aBuilder shortcut: #copySelection) 
		category: #TextEditor
		default: $c ctrl win | $c ctrl unix | $c command mac
		do: [ :target | target copySelection ].
		
	(aBuilder shortcut: #find) 
		category: #TextEditor
		default: $f ctrl win | $f ctrl unix | $f command mac
		do: [ :target | target find ].
		
	(aBuilder shortcut: #findAgain) 
		category: #TextEditor
		default: $g ctrl win | $g ctrl unix | $g command mac
		do: [ :target | target findAgain ].
		
	(aBuilder shortcut: #setSearchString)
		category: #TextEditor
		default: $h ctrl win | $h ctrl unix | $h command mac
		do: [ :target | target setSearchString ].
		
	(aBuilder shortcut: #cancel) 
		category: #TextEditor
		default: $l ctrl win | $l ctrl unix | $l command mac
		do: [ :target | target cancel ].
		
	(aBuilder shortcut: #paste) 
		category: #TextEditor
		default: $v ctrl win | $v ctrl unix | $v command mac
		do: [ :target | target paste ].
		
	(aBuilder shortcut: #cut) 
		category: #TextEditor
		default: $x ctrl win | $x ctrl unix | $x command mac
		do: [ :target | target cut ].
				
	(aBuilder shortcut: #undo) 
		category: #TextEditor
		default: $z ctrl win | $z ctrl unix | $z command mac
		do: [ :target | target undo ].
		
	(aBuilder shortcut: #redo) 
		category: #TextEditor
		default: $z ctrl shift win | $z ctrl shift unix | $z command shift mac
		do: [ :target | target redo ].
	
	(aBuilder shortcut: #cursorHome)
		category: #TextEditor
		default: Character home ctrl win | Character home ctrl unix | Character home command mac
		do: [ :target :morph :event | target cursorHome: event ].
	
	(aBuilder shortcut: #cursorEnd)
		category: #TextEditor
		default: Character end ctrl win | Character end ctrl unix | Character end command mac
		do: [ :target :morph :event | target cursorEnd: event ].