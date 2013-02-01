code generation
generateCall: functionSpec module: aModuleNameOrHandle
	"Generate a foreign function callout from given function specification and
	a module name"
	
	| fnAddress |

	self namedFnSpec: functionSpec.

	fnAddress := requestor nbGetSymbolAddress: fnSpec functionName module: aModuleNameOrHandle.
	fnAddress ifNil: [ self error: 'function unavailable' ].
	
	^ self generateCallToAddress: [ fnAddress ]
