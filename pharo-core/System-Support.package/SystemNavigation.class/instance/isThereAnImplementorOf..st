query
isThereAnImplementorOf: aSelector 
	"Answer true if there is at least one implementor of the selector found  
	in the system, false if there are no implementors"
	"self new isThereAnImplementorOf: #contents.  
	self new isThereAnImplementorOf: #nobodyImplementsThis."
	self 
		allBehaviorsDo: [:class | (class includesSelector: aSelector)
				ifTrue: [^ true]].
	^ false