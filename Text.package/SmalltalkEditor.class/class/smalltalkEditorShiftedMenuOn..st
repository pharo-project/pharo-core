menu declaration
smalltalkEditorShiftedMenuOn: aBuilder 
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'smalltalkEditorShiftedMenu'
		model: nil) menu popUpInWorld"

	<smalltalkEditorShiftedMenu>
	(aBuilder item: #'browse it (b)' translated) selector: #browseIt.
	(aBuilder item: #'senders of it (n)' translated) selector: #sendersOfIt.
	(aBuilder item: #'implementors of it (m)' translated) selector: #implementorsOfIt.
	(aBuilder item: #'references to it (N)' translated) selector: #referencesToIt; withSeparatorAfter.
	(aBuilder item: #'selectors containing it (W)' translated) selector: #methodNamesContainingIt.
	(aBuilder item: #'case insensitive method literal strings with it (E)' translated) selector: #methodStringsContainingit.
	(aBuilder item: #'case sensitive method literal strings with it (E)' translated) selector: #methodCaseSensitiveStringsContainingit.
	(aBuilder item: #'method source with it' translated) selector: #methodSourceContainingIt; withSeparatorAfter.
	(aBuilder item: #'class names containing it' translated) selector: #classNamesContainingIt.
	(aBuilder item: #'class comments with it' translated) selector: #classCommentsContainingIt.
