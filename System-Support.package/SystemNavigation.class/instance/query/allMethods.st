allMethods
	| methods |
	methods := OrderedCollection new.
	self allBehaviorsDo: [ :behavior |
		 methods addAll: behavior methods ].
	^methods. 