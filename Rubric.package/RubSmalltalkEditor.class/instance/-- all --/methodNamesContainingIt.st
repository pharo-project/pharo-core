methodNamesContainingIt
	"Open a browser on methods names containing the selected string"

	self lineSelectAndEmptyCheck: [ ^ self ].
	Cursor wait showWhile: [ 
		self model systemNavigation  browseMethodsWhoseNamesContain: self selection string trimBoth ]
	