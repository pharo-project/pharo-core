code generation
generate: trailer ifQuick: methodBlock
	^self generate: trailer using: CompiledMethod ifQuick: methodBlock