classbindingForClassVar: symbol
	^ (self systemNavigation allClassesAndTraits select: [ :behavior | behavior hasClassVarNamed: symbol ])
	ifNotEmpty:[:e | e first bindingOf: symbol] ifEmpty:[nil]