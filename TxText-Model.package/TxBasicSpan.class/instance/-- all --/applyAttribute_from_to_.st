applyAttribute: anAttribute from: startPosition to: endPosition
	
	"Apply attribute to receiver.
	
	If start position not points to receiver, it means the start of span covered by attribute,
	if endPosition not points to receiver , it means end of span covered by attribute.
	
	Else, they define a split point.

	
	4 cases: 
		- span already has given attribute (so do nothing )
		- start/end covers entire span (just add attribute)
		- split on 2 spans if start or end is at end of span 
		- split on 3 spans both start and end in the middle or span
	"

	
	self subclassResponsibility 