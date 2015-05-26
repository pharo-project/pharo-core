externalAddressValue: externalAddress
	"
	NBBasicExamples new externalAddressValue: (NBExternalAddress value: 10)

	Error message is in: 
	#verifyClassOf:is:generator:

	"
	<primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^ self nbCallout  
		 
		function: #( ulong ( NBExternalAddress  externalAddress) )  
		emit: [:gen :proxy :asm |
			asm pop: asm EAX
		]