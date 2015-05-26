pushNClosureTemps: n
	n = 0 ifTrue: [ ^ self ].
	encoder genPushNClosureTemps: n.