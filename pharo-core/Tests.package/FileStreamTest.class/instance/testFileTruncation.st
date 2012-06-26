testing
testFileTruncation
	"Ensure that nextChunkPut:/nextChunk works properly on a caching file"
	"self debug: #testFileTruncation"
	| file |
	file := nil.
	[file := FileDirectory default forceNewFileNamed: 'TruncationTest.txt'.
	file nextPutAll: '1234567890'.] ensure: [file close].
	[file := FileDirectory default oldFileNamed: 'TruncationTest.txt'.
	self assert: (file contents = '1234567890').
	file truncate: 4.] ensure: [file close].
	[file := FileDirectory default readOnlyFileNamed: 'TruncationTest.txt'.
	self should: (file contents = '1234').] 
		ensure: 
			[file close.
			FileDirectory default deleteFileNamed: file name ifAbsent:[]].