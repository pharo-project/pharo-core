testing
testFlagInCompiledMethod
	"this tests that the flag in compiled methods is treated correctly"
	| method |
	method := self class compiledMethodAt: #returnTwelve.

	"turn off the flag"
	method objectAt: 1 put: (method header bitAnd: (1 << 29) bitInvert).
	self should: [ method flag not ].

	"turn on the flag"
	method objectAt: 1 put: (method header bitOr: (1 << 29)).
	self should: [ method flag ].

	"try running the method with the flag turned on"
	self should: [ self returnTwelve = 12 ].


	"make sure the flag bit isn't interpreted as a primitive"
	self should: [ method isPrimitive not ].