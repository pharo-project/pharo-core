code generation
generate: trailer using: aCompiledMethodClass
	"The receiver is the root of a parse tree. Answer an instance of aCompiledMethodClass.
	 The argument, trailer, is arbitrary but is typically either the reference to the source code
	 that is stored with every CompiledMethod, or an encoding of the method's temporary names."

	| primErrNode blkSize nLits literals stack method |
	self generate: trailer
		using: aCompiledMethodClass
		ifQuick:
			[:m |
			  m	literalAt: 2 put: encoder associationForClass;
				properties: properties.
			^m].
	primErrNode := self primitiveErrorVariableName ifNotNil:
						[encoder fixTemp: self primitiveErrorVariableName].
	encoder supportsClosureOpcodes ifTrue:
		[self ensureClosureAnalysisDone.
		 encoder rootNode: self. "this is for BlockNode>>sizeCodeForClosureValue:"].
	blkSize := (block sizeCodeForEvaluatedValue: encoder)
				+ (primErrNode
					ifNil: [0]
					ifNotNil:
						[primErrNode
							index: arguments size + temporaries size;
							sizeCodeForStore: encoder "The VM relies on storeIntoTemp: (129)"]).
	method := aCompiledMethodClass
				newBytes: blkSize
				trailerBytes: trailer 
				nArgs: arguments size
				nTemps: (encoder supportsClosureOpcodes
							ifTrue: [| locals |
									locals := arguments,
											  temporaries,
											  (primErrNode
												ifNil: [#()]
												ifNotNil: [{primErrNode}]).
									encoder
										noteBlockExtent: block blockExtent
										hasLocals: locals.
									locals size]
							ifFalse: [encoder maxTemp])
				nStack: 0
				nLits: (nLits := (literals := encoder allLiterals) size)
				primitive: primitive.
	nLits > 255 ifTrue:
		[^self error: 'Too many literals referenced'].
	1 to: nLits do: [:lit | method literalAt: lit put: (literals at: lit)].
	encoder streamToMethod: method.
	stack := ParseStack new init.
	primErrNode ifNotNil: [primErrNode emitCodeForStore: stack encoder: encoder].
	stack position: method numTemps.
	block emitCodeForEvaluatedValue: stack encoder: encoder.
	stack position ~= (method numTemps + 1) ifTrue:
		[^self error: 'Compiler stack discrepancy'].
	encoder methodStreamPosition ~= (method size - trailer size) ifTrue:
		[^self error: 'Compiler code size discrepancy'].
	method needsFrameSize: stack size - method numTemps.
	method properties: properties.
	^method