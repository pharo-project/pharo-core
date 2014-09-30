openContents: aString
	"Open a new playground with the given contents. aString has to be Smalltalk code. The style is applied"
	

	| page |
	
	page := GTPlaygroundPage new
		content: aString;
		yourself.
	^ self new openOn: page