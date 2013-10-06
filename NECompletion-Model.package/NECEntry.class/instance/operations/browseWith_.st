browseWith: anECContext 
	| guessType |
	guessType := self guessTypeWith: anECContext.
	guessType ifNil: [^ false].
	SystemNavigation new browseClass: guessType.
	^ true