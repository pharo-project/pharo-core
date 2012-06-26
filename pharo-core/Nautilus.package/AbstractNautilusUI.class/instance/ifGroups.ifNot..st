private
ifGroups: aBlock ifNot: anotherBlock

	^self showGroups
			ifTrue: aBlock
			ifFalse: anotherBlock