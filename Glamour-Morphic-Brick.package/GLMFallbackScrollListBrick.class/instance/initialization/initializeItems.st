initializeItems
	
	self band layoutAfter: [
		1 to: self adaptor count do: [ :index |
			self band addBrickBack: ((self adaptor morphAt: index convert: nil) asBrick with:[:b |
				b isHeightDependsOnParent ifTrue: [ b height: 30 ]]) ] ].
	
	self band hasSubbricks ifFalse: [ self emptyBrick ifNotNil: [ :b | self band addBrickBack: b ] ].