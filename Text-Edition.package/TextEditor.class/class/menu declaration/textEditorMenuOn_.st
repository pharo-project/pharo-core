textEditorMenuOn: aBuilder 
	"Specify the menu used when writing text. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'textEditorMenu'
		model: nil) menu popUpInWorld"

	<contextMenu>
	<textEditorMenu>

	(aBuilder item: #'Find...' translated) 
		keyText: 'f';
		selector: #find; 
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Find again' translated) 
		keyText: 'g';
		selector: #findAgain; 
		icon: Smalltalk ui icons smallFindIcon.
	(aBuilder item: #'Set search string' translated) 
		keyText: 'h';
		selector: #setSearchString.
	(aBuilder item: #'Do again' translated) 
		keyText: 'j';
		selector: #again; 
		icon: Smalltalk ui icons smallRedoIcon.
	(aBuilder item: #'Undo' translated) 
		keyText: 'z';
		selector: #undo; 
		icon: Smalltalk ui icons smallUndoIcon; 
		withSeparatorAfter.
	
	(aBuilder item: #'Copy' translated) 
		keyText: 'c';
		selector: #copySelection; 
		icon: Smalltalk ui icons smallCopyIcon.
	(aBuilder item: #'Cut' translated) 
		keyText: 'x';
		selector: #cut; 
		icon: Smalltalk ui icons smallCutIcon.
	(aBuilder item: #'Paste' translated) 
		keyText: 'v';
		selector: #paste; 
		icon: Smalltalk ui icons smallPasteIcon.
	(aBuilder item: #'Paste...' translated) 
		selector: #pasteRecent; 
		icon: Smalltalk ui icons smallCopyIcon; 
		withSeparatorAfter.

	(aBuilder item: #'Set font...' translated) 
		keyText: 'k';
		selector: #offerFontMenu.
	(aBuilder item: #'Set style...' translated) 
		keyText: 'K';
		selector: #changeStyle.
	(aBuilder item: #'Set alignment...' translated) 
		selector: #chooseAlignment; 
		withSeparatorAfter.

	(aBuilder item: #'Accept' translated) 
		keyText: 's';
		selector: #accept; 
		icon: Smalltalk ui icons smallOkIcon.
	(aBuilder item: #'Cancel' translated) 
		keyText: 'l';
		selector: #cancel; 
		icon: Smalltalk ui icons smallCancelIcon.