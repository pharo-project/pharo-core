reporting
reportDebugLog: aStream
	"This method is far too slow, and doesn't seem to really make sense"
	"If you want to reintroduce this option, just uncomment the line in initialize"
	
	| logFilename logStream contents |
	self header: 'Debug Logfile' on: aStream.
	logFilename := Smalltalk tools debugger defaultLogFileName.
	logStream := nil.
	[
		[
			logStream := FileStream readOnlyFileNamed: logFilename.
			aStream nextPutAll: logStream name; cr; cr.
			
			self flag: 'Should have a look of the speed of this line'.
			contents := logStream contents.
			
			aStream
				nextPutAll: 
					((contents isNil or: [contents size = 0])
						ifTrue: ['<empty>']
						ifFalse: [contents]);
				cr
		] on: Error do: [:ex |
			aStream
				nextPutAll: (
					ex class = FileDoesNotExistException
						ifTrue: [logFilename, ' not found']
						ifFalse: [ex description]);
				cr
		]
	] ensure: [
		logStream ifNotNil: [logStream close]
	]