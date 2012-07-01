*NautilusCommon
isOverride
	
	self methodClass allSuperclasses do: [:each | 
		(each selectors includes: self selector)
			ifTrue: [ ^true ]].
	^ false