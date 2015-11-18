addIconStyle

	self selectedMethod ifNil: [ ^self ].
	AbstractIconStyler subclassesDo:[:styleClass|
		styleClass shouldStyle ifTrue:[
			self selectedMethod ast acceptVisitor: (styleClass style: self sourceTextModel)
		]
	].