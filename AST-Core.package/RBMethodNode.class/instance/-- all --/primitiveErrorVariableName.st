primitiveErrorVariableName
	"Answer the primitive error code temp name, or nil if none."
	self isPrimitive ifTrue: [ 
		self pragmas do: [ :pragma | 
			pragma selectorParts first = 'primitive:' ifTrue: [ 
				^ pragma argumentAt: 'error:' ifAbsent: nil ] ] ].
	^ nil