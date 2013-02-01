accessing functions
minorVersion
	"retrieve an interpreter proxy structure minor version value"

	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout
		options: #(
			"do not use interpreterProxy address directly"
			 - optDirectProxyFnAddress 
			"do not align stack for FFI call"
			+ optNoAlignment ); 
		function: #(short ()) emit: [:gen | 
			gen proxy minorVersion
		] 