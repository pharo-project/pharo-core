collect: aBlock 
	"Evaluate aBlock with each of my values as the argument.  Collect the
	resulting values into a collection that is like me. Answer with the new
	collection."
	| newCollection |
	newCollection := OrderedCollection new: self size.
	self do: [:each | newCollection add: (aBlock value: each)].
	^ newCollection