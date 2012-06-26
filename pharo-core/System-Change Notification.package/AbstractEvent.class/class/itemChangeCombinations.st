accessing
itemChangeCombinations

	^self supportedKinds collect: [:itemKind | self eventSelectorBlock value: itemKind value: self changeKind]