private
tryNamedPrimitiveIn: aCompiledMethod for: aReceiver withArgs: arguments
	<primitive: 218 error: ec>
	ec ifNotNil:
		["If ec is an integer other than -1 there was a problem with primitive 218,
		 not with the external primitive itself.  -1 indicates a generic failure (where
		 ec should be nil) but ec = nil means primitive 218 is not implemented.  So
		 interpret -1 to mean the external primitive failed with a nil error code."
		ec isInteger ifTrue:
			[ec = -1
				ifTrue: [ec := nil]
				ifFalse: [self primitiveFailed]].
		^  self class primitiveFailTokenFor: ec ].
	"Assume a nil error code implies the primitive is not implemented and fall back on the old code."
	
	"The primitive doesn't exist or there was an error. Hence, we follow another solution without the primitive"
	^ self withoutPrimitiveTryNamedPrimitiveIn: aCompiledMethod for: aReceiver withArgs: arguments
