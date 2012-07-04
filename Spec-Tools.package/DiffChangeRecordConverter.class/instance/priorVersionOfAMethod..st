private
priorVersionOfAMethod: aChangeRecord
	| index |
	
	list := referencesList sorted: [:a :b | a timeStamp > b timeStamp ].
	index := list indexOf: aChangeRecord .
	^ list at: index+1 ifAbsent: [ aChangeRecord ]