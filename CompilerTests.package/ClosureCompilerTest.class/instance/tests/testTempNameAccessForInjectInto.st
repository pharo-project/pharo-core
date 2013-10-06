testTempNameAccessForInjectInto
	"self new testTempNameAccessForInjectInto"
	| methodNode method evaluationCount block debuggerMap |
	methodNode := Parser new
						encoderClass: EncoderForV3PlusClosures;
						parse: (Collection sourceCodeAt: #inject:into:)
						class: Collection.
	method := methodNode generate.
	debuggerMap := DebuggerMethodMap new forMethod: method methodNode: methodNode.
	evaluationCount := 0.
	block := [:prev :each| | theContext tempNames |
			evaluationCount := evaluationCount + 1.
			theContext := thisContext sender.
			tempNames := debuggerMap tempNamesForContext: theContext.
			self assert: (tempNames hasEqualElements: tempNames).
			#('thisValue' 'each' 'binaryBlock' 'nextValue')
				with: { 0. each. block. prev}
				do: [:tempName :value|
					self assert: (debuggerMap namedTempAt: (tempNames indexOf: tempName) in: theContext) == value.
					tempName ~= 'each' ifTrue:
						[self assert: (debuggerMap namedTempAt: (tempNames indexOf: tempName) in: theContext home) == value]]].
	(1 to: 10) withArgs: { 0. block } executeMethod: method.
	self assert: evaluationCount = 10