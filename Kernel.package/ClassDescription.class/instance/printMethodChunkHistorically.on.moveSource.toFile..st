filein/out
printMethodChunkHistorically: selector on: outStream moveSource: moveSource toFile: fileIndex
	"Copy all source codes historically for the method associated with selector onto the 
	fileStream.  If moveSource true, then also set the source code pointer of the method."

	| preamble method sourceFile endPos category changeList newPos |
	category := self organization categoryOfElement: selector.
	preamble := self name , ' methodsFor: ', category asString printString.
	method := self methodDict at: selector.
	((method fileIndex = 0
	or: [(SourceFiles at: method fileIndex) == nil])
	or: [method filePosition = 0])
	ifTrue: [
		outStream cr; nextPut: $!; nextChunkPut: preamble; cr.
		outStream nextChunkPut: method decompileString.
		outStream nextChunkPut: ' '; cr]
	ifFalse: [
		changeList := ChangeSet 
			scanVersionsOf: method 
			class: self 
			meta: self isMeta
			category: category 
			selector: selector.
		newPos := nil.
		sourceFile := SourceFiles at: method fileIndex.
		changeList reverseDo: [ :chgRec | | prior |
			chgRec fileIndex = fileIndex ifTrue: [
				outStream copyPreamble: preamble from: sourceFile at: chgRec position.
				(prior := chgRec prior) ifNotNil: [
					outStream position: outStream position - 2.
					outStream nextPutAll: ' prior: ', (
						prior first = method fileIndex ifFalse: [prior third] ifTrue: [
							SourceFiles 
								sourcePointerFromFileIndex: method fileIndex 
								andPosition: newPos]) printString.
					outStream nextPut: $!; cr].
				"Copy the method chunk"
				newPos := outStream position.
				outStream copyMethodChunkFrom: sourceFile at: chgRec position.
				sourceFile skipSeparators.      "The following chunk may have ]style["
				sourceFile peek == $] ifTrue: [
					outStream cr; copyMethodChunkFrom: sourceFile].
				outStream nextChunkPut: ' '; cr]].
		moveSource ifTrue: [
			endPos := outStream position.
			method setSourcePosition: newPos inFile: fileIndex]].
	^ outStream