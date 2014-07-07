initialize
	self name = #IRAbstractBytecodeGenerator ifTrue: [ ^ self ].
	"subclasses only"
	self initializeBytecodeTable.
	self initializeSpecialSelectors.
	self initializeSpecialConstants.
