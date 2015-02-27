markLayoutDirty: aBrick

	aBrick ifNotNil: [ :b | b isBrick ifTrue: [ b layout markDirty ] ]