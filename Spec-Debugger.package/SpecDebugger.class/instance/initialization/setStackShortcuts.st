setStackShortcuts
	"initialize the debuggers' shortcuts with the dictionary defined in self shortCuts"

	self shortCuts keysAndValuesDo: [ :key :value |
		self stack bindKeyCombination: key toAction: value ]
