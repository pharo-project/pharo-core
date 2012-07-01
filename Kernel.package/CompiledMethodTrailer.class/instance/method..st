initialize-release
method: aMethod

	| flagByte |

	data := size := nil.
	method := aMethod.
	flagByte := method at: (method size).

	"trailer kind encoded in 6 high bits of last byte"
	kind := self class trailerKinds at: 1+(flagByte>>2).

	"decode the trailer bytes"
	self perform: ('decode' , kind) asSymbol.
	
	"after decoding the trailer, size must be set"
	[size notNil] assert.
	
