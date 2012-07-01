accessing method dictionary
supermostPrecodeCommentFor: selector 
	"Answer a string representing the precode comment in the most distant 
	superclass's implementation of the selector. Return nil if none found."
	| aSuper superComment |
	(self == Behavior
			or: [superclass == nil
					or: [(aSuper := superclass whichClassIncludesSelector: selector) == nil]])
		ifFalse: ["There is a super implementor"
			superComment := aSuper supermostPrecodeCommentFor: selector].
	^ superComment
		ifNil: [self firstPrecodeCommentFor: selector
			"ActorState supermostPrecodeCommentFor: #printOn:"]