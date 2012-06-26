*NautilusCommon
isOverriden
	
	self methodClass allSubclasses do: [:each | 
		(each selectors includes: self selector)
			ifTrue: [ ^true ]].
	^ false
	