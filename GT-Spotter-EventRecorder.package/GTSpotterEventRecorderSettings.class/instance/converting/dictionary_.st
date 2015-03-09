dictionary: aCollection 
	aCollection keysAndValuesDo: [ :key :value | | instVarIndex |
		instVarIndex := self class instVarIndexFor: key.
		instVarIndex isZero ifFalse: [ 
			self instVarAt: instVarIndex put: value
		]
	]