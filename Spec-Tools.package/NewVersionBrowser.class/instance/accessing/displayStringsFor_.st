displayStringsFor: aMethodVersion
	| author version |
	author := aMethodVersion stamp trim ifEmpty: [ '' ] ifNotEmpty: [ :s | s firstWord ].
	version := aMethodVersion stamp trim substrings ifEmpty: [ '' ] ifNotEmpty: [ :s | s allButFirst joinUsing: ' ' ].
	^ {author.
	version.
	(aMethodVersion realClass name).
	(aMethodVersion selector).
	('{' , aMethodVersion category , '}')}