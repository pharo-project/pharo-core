actions
insertCompletion: aString

	| caret old pos editor |
	editor := controller editor.
	caret := editor caret.
	editor selectInvisiblyFrom: caret - context completionToken size to: caret - 1.
	old := editor selection. 
	editor zapSelectionWith: aString.
	pos := caret + (aString copyUpTo: $ ) size + 1 - old size.
	editor selectAt: pos.
	editor morph invalidRect: editor morph bounds