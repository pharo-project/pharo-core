selected

	^ selected ifNil: [
		selected := (self candidates isEmpty
			ifTrue: [ ^ nil ]
			ifFalse: [ self candidates head ]).
		self notifySelectedCandidateChanged: selected.
		selected ifNotNil: [ self spotter notifyCategorySelected: self selected processor ].
		selected ]