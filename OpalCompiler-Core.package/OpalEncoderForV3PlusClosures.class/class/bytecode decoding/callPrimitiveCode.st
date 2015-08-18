callPrimitiveCode
	"139	11101111	iiiiiiii jjjjjjjj	Call Primitive #iiiiiiii + (jjjjjjjj * 256)
	Answer the call primitive bytecode, if it exists in the encoder's bytecode set, or nil if not."
	^ Smalltalk vm isSpur ifTrue: [ 139 ] 