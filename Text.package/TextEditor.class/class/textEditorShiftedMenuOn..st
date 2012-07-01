menu declaration
textEditorShiftedMenuOn: aBuilder 
	"Specify the menu used when writing text. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'textEditorShiftedMenu'
		model: nil) menu popUpInWorld"

	<textEditorShiftedMenu>
	(aBuilder item: #'set font... (k)' translated) selector: #offerFontMenu.
	(aBuilder item: #'set style... (K)' translated) selector: #changeStyle.
	(aBuilder item: #'set alignment...' translated) selector: #chooseAlignment.
	(aBuilder item: #'more...' translated) selector: #yellowButtonActivity.
