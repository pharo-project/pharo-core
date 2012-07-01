history behavior
currentHistory

	| index item |
	index := 1 min: self getHistoryList size.
	index = 0 ifTrue: [ ^ 0 ].
	item := (self getHistoryList at: index) key.
	item selectedClass = self selectedClass
		ifTrue: [ 
			(self selectedMethod
				ifNil: [ item selectedMethod isNil ]
				ifNotNil: [:m | item selectedMethod = m selector ])
					ifTrue: [ ^ index ]].

	^ 0