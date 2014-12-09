addStyle: aStyle
	"Register a new style, but only if none of existing styles matching an argument, answer the 
	registered style"
	
	aStyle = defaultStyle ifTrue: [ ^ defaultStyle ].
	^ styles detect: [ :each | aStyle = each ] ifNone: [ styles add: aStyle ]