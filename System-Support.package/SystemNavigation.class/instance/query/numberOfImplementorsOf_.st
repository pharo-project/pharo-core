numberOfImplementorsOf: aSelector 
	"Answer a count of the implementors of the given selector found in the  
	system"
	"self new numberOfImplementorsOf: #contents.  
	self new numberOfImplementorsOf: #nobodyImplementsThis.  
	self new numberOfimplementorsOf: #numberOfImplementorsOf:."
	^(self allImplementorsOf: aSelector) size