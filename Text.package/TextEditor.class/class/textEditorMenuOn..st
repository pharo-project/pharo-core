menu declaration
textEditorMenuOn: aBuilder 
	"Specify the menu used when writing text. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'textEditorMenu'
		model: nil) menu popUpInWorld"

	<contextMenu>
	<textEditorMenu>

	| uitheme |
	uitheme := UITheme current.
	(aBuilder item: #'Find...' translated) 
		keyText: 'f';
		selector: #find; 
		icon: uitheme smallFindIcon.
	(aBuilder item: #'Find again' translated) 
		keyText: 'g';
		selector: #findAgain; 
		icon: uitheme smallFindIcon.
	(aBuilder item: #'Set search string' translated) 
		keyText: 'h';
		selector: #setSearchString.
	(aBuilder item: #'Do again' translated) 
		keyText: 'j';
		selector: #again; 
		icon: uitheme  smallRedoIcon.
	(aBuilder item: #'Undo' translated) 
		keyText: 'z';
		selector: #undo; 
		icon: uitheme smallUndoIcon; 
		withSeparatorAfter.
	
	(aBuilder item: #'Copy' translated) 
		keyText: 'c';
		selector: #copySelection; 
		icon: uitheme smallCopyIcon.
	(aBuilder item: #'Cut' translated) 
		keyText: 'x';
		selector: #cut; 
		icon: uitheme smallCutIcon.
	(aBuilder item: #'Paste' translated) 
		keyText: 'v';
		selector: #paste; 
		icon: uitheme smallPasteIcon.
	(aBuilder item: #'Paste...' translated) 
		selector: #pasteRecent; 
		icon: uitheme smallCopyIcon; 
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
		icon: uitheme smallOkIcon.
	(aBuilder item: #'Cancel' translated) 
		keyText: 'l';
		selector: #cancel; 
		icon: uitheme smallCancelIcon.