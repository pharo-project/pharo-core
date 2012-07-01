query
allImplementorsOf: aSelector 
	"Answer a SortedCollection of all the methods that implement the message 
	aSelector."
	
	| aCollection |
	aCollection := SortedCollection new.
	self allBehaviorsDo: [:class | 
		(class includesSelector: aSelector)
			ifTrue: [aCollection add: (self createMethodNamed: aSelector realParent: class)]].
	^ aCollection