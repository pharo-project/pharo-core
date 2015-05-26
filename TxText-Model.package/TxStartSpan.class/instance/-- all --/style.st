style
	"My attributes are always same as my next span,
	unless text is empty, then it is default text attributes"
	
	^ text isEmpty
		ifTrue: [ text defaultStyle ]
		ifFalse: [ next style ]