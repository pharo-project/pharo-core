accessing
systemEvents
	"Return all the possible events in the system. Make a cross product of 
	the items and the change types."
	"self systemEvents"

	^self allSubclasses
		inject: OrderedCollection new
		into: [:allEvents :eventClass | allEvents addAll: eventClass itemChangeCombinations; yourself]