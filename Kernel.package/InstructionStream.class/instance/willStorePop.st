testing
willStorePop
	"Answer whether the next bytecode is a store-pop."

	| byte |
	byte := self method at: pc.
	^byte = 130					"130		extendedStoreAndPopBytecode"
	  or: [byte = 142				"142		storeAndPopRemoteTempLongBytecode"
	  or: [byte between: 96 and: 111	"96 103		storeAndPopReceiverVariableBytecode"
									"104 111	storeAndPopTemporaryVariableBytecode"]]