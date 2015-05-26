fileOut
	| fileName stream |
	fileName := UIManager default request: 'Enter the file name' initialAnswer:''.
	stream := FileStream newFileNamed: fileName.
	sourceSystem isEmpty ifFalse:[
		stream nextChunkPut: sourceSystem printString;cr ].
	self fileOutOn: stream.
	stream cr; cr.
	self classes do:[:cls|
		cls needsInitialize ifTrue:[
			stream cr; nextChunkPut: cls name,' initialize']].
	stream cr.
	stream close.

	"DeepCopier new checkVariables."
