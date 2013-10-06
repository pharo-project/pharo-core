selectedMessageName
	"Answer the message selector of the currently selected context.
	 If the method is unbound we can still usefully answer its old selector."

	| selector |
	selector := self selectedContext methodSelector.
	^(selector ~~ self selectedContext method selector
	    and: [selector beginsWith: 'DoIt'])
		ifTrue: [self selectedContext method selector]
		ifFalse: [selector]