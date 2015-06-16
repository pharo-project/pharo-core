printMethodChunk: selector on: outStream
	"Copy the source code for the method associated with selector onto the fileStream."

	| preamble method oldPos sourceFile |
	preamble := self name, ' methodsFor: ', (self organization categoryOfElement: selector) asString printString.
	method := self methodDict
		at: selector
		ifAbsent: [ 
			outStream
				nextPutAll: selector;
				cr.
			outStream
				tab;
				nextPutAll: '** ERROR!  THIS SCRIPT IS MISSING ** ' translated;
				cr;
				cr.
			outStream nextPutAll: '  '.
			^ outStream ].
	oldPos := method filePosition.
	sourceFile := SourceFiles at: method fileIndex.
	"Copy the preamble"
	outStream copyPreamble: preamble from: sourceFile at: oldPos.
	outStream copyMethodChunkFrom: sourceFile.
	sourceFile skipSeparators.	"The following chunk may have ]style["
	sourceFile peek == $] ifTrue: [ 
		outStream
			cr;
			copyMethodChunkFrom: sourceFile ].
	outStream nextChunkPut: ' '.
	^ outStream cr