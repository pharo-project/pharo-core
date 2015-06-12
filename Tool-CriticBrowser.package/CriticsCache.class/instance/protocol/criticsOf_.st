criticsOf: aRule

	aRule ifNil: [ ^ {} ].	
	^ aRule isComposite
		ifTrue: [ aRule leaves gather: [ :rule | self criticsOf: rule ]]
		ifFalse: [ critics at: aRule ifAbsent: [{}]]