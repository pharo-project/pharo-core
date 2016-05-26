addIconStyle

	self selectedMethod ifNil: [ ^self ].
	AbstractIconStyler allSubclassesDo:[:styleClass|
		styleClass shouldStyle ifTrue:[
			self selectedMethod ast acceptVisitor: (styleClass style: self sourceTextModel)
		]
	].