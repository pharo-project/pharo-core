addIconStyle

	self selectedMethod ifNil: [ ^self ].
	IconStyler allSubclassesDo:[:styleClass|
		styleClass shouldStyle ifTrue:[
			self selectedMethod ast acceptVisitor: (styleClass style: self sourceTextModel)
		]
	].