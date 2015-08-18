putSource: source withPreamble: preambleBlock
	"Store the source code for the receiver on an external file."

	SourceFiles 
		writeSource: source 
		preamble: (String streamContents: preambleBlock)
		onSuccess: [ :newSourcePointer | self setSourcePointer: newSourcePointer ]
		onFail: [ self becomeForward: (self copyWithSource: source) ]