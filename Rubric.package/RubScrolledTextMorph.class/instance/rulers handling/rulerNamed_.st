rulerNamed: aKey
	^self rulers detect: [ :r | r key = aKey ] ifNone: [  ]