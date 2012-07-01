operations
browseWith: anECContext 
	type := self guessTypeWith: anECContext.
	type ifNil: [^ false].
	SystemNavigation default browseClass: type.
	^ true