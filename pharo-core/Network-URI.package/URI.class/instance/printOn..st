printing
printOn: stream
	self isAbsolute
		ifTrue: [
			stream nextPutAll: self scheme.
			stream nextPut: $: ].
	self printSchemeSpecificPartOn: stream.
	fragment
		ifNotNil: [
			stream nextPut: $# .
			stream nextPutAll: self fragment]
