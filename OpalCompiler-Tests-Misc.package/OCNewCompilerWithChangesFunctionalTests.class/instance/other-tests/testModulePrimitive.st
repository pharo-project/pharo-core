testModulePrimitive
	
	| aCompiledMethod bytecode index |
	aCompiledMethod := (OpalCompiler new 
	compile: 'copyBitsAgain
	"Primitive. See BitBlt|copyBits, also a Primitive. Essential. See Object
	documentation whatIsAPrimitive."

	<primitive: ''primitiveCopyBits'' module: ''BitBltPlugin''>
	self primitiveFailed'
	in: BitBlt
	classified: nil
	notifying: nil
	ifFail: [])
	generate.
									
	bytecode := aCompiledMethod symbolic asString subStrings: '
'.
	index := 0.
	self assert: (bytecode at: (index := index + 1)) = '<primitive: ''primitiveCopyBits'' module: ''BitBltPlugin''>'.
	self assert: (bytecode at: (index := index + 1)) = '21 <70> self'.
	self assert: (bytecode at: (index := index + 1)) = '22 <D1> send: primitiveFailed'.
	self assert: (bytecode at: (index := index + 1)) = '23 <87> pop'.
	self assert: (bytecode at: (index := index + 1)) = '24 <78> returnSelf'.