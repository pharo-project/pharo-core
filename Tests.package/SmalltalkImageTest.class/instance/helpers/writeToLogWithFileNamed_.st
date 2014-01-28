writeToLogWithFileNamed: filename
	| oldLogFileName |
	oldLogFileName := Smalltalk tools debugger logFileName.
	Smalltalk tools debugger logFileName: filename.
	[ 
	| stream |
	stream := Smalltalk image openLog.
	stream nextPutAll: 'foobar'	"We just make sure we can write something. I don't know any reliable way to check if it has really been written" ]
		ensure: [ Smalltalk tools debugger logFileName: oldLogFileName ]