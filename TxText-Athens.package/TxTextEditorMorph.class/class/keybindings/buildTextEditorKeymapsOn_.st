buildTextEditorKeymapsOn: aBuilder	 
	<keymap> 
	 
	{  
		Character home. #moveToLineStart.
		Character home shift. #selectToLineStart.
		Character end. #moveToLineEnd.
		Character end shift. #selectToLineEnd.
		
		Character arrowRight. #moveRight.
		Character arrowLeft. #moveLeft.
		Character arrowUp. #moveUp.
		Character arrowDown. #moveDown.
		Character cr. #handleEnterKey.
		Character delete. #handleDeleteKey.
		Character backspace. #handleBackspaceKey.
		Character pageDown. #movePageDown.
		Character pageUp. #movePageUp.
		$z command. #undo.
		Character arrowRight shift. #extendSelectionRight.
		Character arrowLeft shift. #extendSelectionLeft.
		Character arrowUp shift. #extendSelectionUp.
		Character arrowDown shift. #extendSelectionDown.
		$v command. #pasteClipboard.
		$c command. #copyToClipboard.
		$x command. #cutToClipboard.
		$a command. #selectAll.
		
	 } pairsDo: [ :key :action |
		(aBuilder shortcut: action )
		category: #TxTextEditorMorph
		default: key asKeyCombination
		do: [ :morph | morph perform: action ].
	]