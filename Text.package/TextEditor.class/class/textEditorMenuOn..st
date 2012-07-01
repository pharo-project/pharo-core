menu declaration
textEditorMenuOn: aBuilder 
	"Specify the menu used when writing text. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'textEditorMenu'
		model: nil) menu popUpInWorld"

	<textEditorMenu>
	| uitheme |
	uitheme := UITheme current.
	(aBuilder item: #'Find...(f)' translated) selector: #find; help: nil; icon: uitheme smallFindIcon.
	(aBuilder item: #'Find again (g)' translated) selector: #findAgain; help: nil; icon: uitheme smallFindIcon.
	(aBuilder item: #'Set search string (h)' translated) selector: #setSearchString.
	(aBuilder item: #'Do again (j)' translated) selector: #again; help: nil; icon: uitheme  smallRedoIcon.
	(aBuilder item: #'Undo (z)' translated) selector: #undo; help: nil; icon: uitheme smallUndoIcon; withSeparatorAfter.
	(aBuilder item: #'Copy (c)' translated) selector: #copySelection; help: nil; icon: uitheme  smallCopyIcon.
	(aBuilder item: #'Cut (x)' translated) selector: #cut; help: nil; icon:  uitheme smallCutIcon.
	(aBuilder item: #'Paste (v)' translated) selector: #paste; help: nil; icon:  uitheme smallPasteIcon.
	(aBuilder item: #'Paste...' translated) selector: #pasteRecent; help: nil; icon: uitheme  smallCopyIcon; withSeparatorAfter.
	(aBuilder item: #'Set font... (k)' translated) selector: #offerFontMenu.
	(aBuilder item: #'Set style... (K)' translated) selector: #changeStyle.
	(aBuilder item: #'Set alignment...' translated) selector: #chooseAlignment; withSeparatorAfter.
	(aBuilder item: #'Accept (s)' translated) selector: #accept; help: nil; icon: uitheme  smallOkIcon.
	(aBuilder item: #'Cancel (l)' translated) selector: #cancel; help: nil; icon: uitheme  smallCancelIcon.

