callPrimitiveCode
	"Answer the call primitive bytecode, if it exists in the encoder's bytecode set, or nil if not."
	^ Smalltalk vm isSpur ifTrue: [ 139 ]