scrollTo: aValue smooth: aBoolean

	aBoolean
		ifTrue: [ self scrollTo: aValue duration: 200 ]
		ifFalse: [ self scrollTo: aValue ] 