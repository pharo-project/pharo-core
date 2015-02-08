assertMethodWidget
	| index item |
	self assert: nautilus ui methodWidget methodsList listMorph submorphs notEmpty.
	index := nautilus ui methodWidget methodsList listMorph selectedRow.
	nautilus selectedMethod ifNotNil: [ 
		self assert: index notNil.
		item := nautilus ui methodWidget methodsList listMorph item: index.
		self assert: item originalObject equals: expectedCompiledMethod ].
