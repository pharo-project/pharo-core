string access
readString
	"sometimes we're just a pointer to string"
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout function: #(String (self)) emit: [:gen |
		gen asm pop: gen asm EAX ] 