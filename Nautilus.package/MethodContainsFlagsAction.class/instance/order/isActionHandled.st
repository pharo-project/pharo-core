isActionHandled
	"Return true if the provided method fits this action requirement"
	method literalsDo: [ :lit |
		(lit isSymbol and: [ #flag: == lit]) 
			ifTrue: [ ^ method messages includes: #flag: ]
	].
	^ false 