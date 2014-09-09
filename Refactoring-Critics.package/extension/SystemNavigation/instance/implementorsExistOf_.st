implementorsExistOf: aSelector 
	"Answers if there are methods which implement given selector"
	
	self allBehaviorsDo: [:class | 
		(class includesSelector: aSelector)
			ifTrue: [ ^ true ] ].
	^ false