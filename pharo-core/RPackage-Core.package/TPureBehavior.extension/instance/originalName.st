*Rpackage-Core
originalName
	^self isObsolete 
		ifTrue: [ (self name copyFrom:   'AnObsolete' size + 1 to: self name size ) asSymbol ]
		ifFalse:  [  self name asSymbol ].