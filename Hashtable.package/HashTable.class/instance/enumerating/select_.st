select: aBlock 
	"Evaluate aBlock with each of my values as the argument. Collect into a
	new dictionary, only those associations for which aBlock evaluates to
	true."

	| newCollection |
	newCollection := self species new.
	self keysAndValuesDo: [ :key :value | 
		(aBlock value: value)
			ifTrue: [ newCollection at: key put: value ] ].
	^newCollection