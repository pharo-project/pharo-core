operations
browseWith: anECContext 
	type := self guessTypeWith: anECContext.
	type ifNil: [^ false].
	SystemNavigation new browseClass: type.
	^ true