source code area
contentsSelection

	self selectedClass isNil
		ifFalse:[	
			self selectedMethod isNil
				ifTrue: [
					self selectedCategory notNil
						ifTrue: [^ (1 to: self defaultMethodSource size) ]]].
	^ (1 to: 0)