tests
testSourceRangeAccessForClosureBytecodeInjectInto
	"Test debugger source range selection for inject:into: for a version compiled with closures"
	"self new testSourceRangeAccessForClosureBytecodeInjectInto"
	| source method |
	source := (Collection sourceCodeAt: #inject:into:) asString.
	method := (Parser new
						encoderClass: EncoderForV3PlusClosures;
						parse: source
						class: Collection)
					generate: (Collection compiledMethodAt: #inject:into:) trailer.
	self supportTestSourceRangeAccessForInjectInto: method source: source