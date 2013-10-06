initializeShortcuts
	"initialize the inspector' shortcuts with the dictionary defined in self shortCuts"

	self shortCuts keysAndValuesDo: [ :key :value |
		list bindKeyCombination: key toAction: value ]
