source code area
highlight: autoSelectString
	| first |

	first := sourceTextArea getText findString: autoSelectString.
	contentSelection := first to: first+autoSelectString size-1.
	self changed: #sourceCodeFrom: