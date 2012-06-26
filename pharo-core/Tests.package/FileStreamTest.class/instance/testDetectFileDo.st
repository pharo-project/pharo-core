testing
testDetectFileDo
	| filename |
	[ filename := 'filestream.tst'.
	(FileDirectory default forceNewFileNamed: filename) nextPutAll: '42';
		 close.
	FileStream
		detectFile: [FileDirectory default oldFileNamed: filename]
		do: [:file | 
			self assert: file notNil.
			self deny: file closed.
			self assert: file contentsOfEntireFile = '42']]
		ensure: [FileDirectory default deleteFileNamed: filename ifAbsent: nil]