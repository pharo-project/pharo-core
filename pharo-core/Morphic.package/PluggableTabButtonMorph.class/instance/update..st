updating
update: aSelector
	self textSelector ifNotNil: [
		aSelector = self textSelector
			ifTrue: [ | morph |
				(aSelector isSymbol and: [model notNil])
					ifTrue: [
						morph :=
							(self model perform: aSelector) asMorph]
					ifFalse: [ morph := aSelector value asMorph].
				self subMorph: morph]].
	self changed