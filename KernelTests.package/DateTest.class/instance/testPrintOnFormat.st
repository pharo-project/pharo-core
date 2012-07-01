tests
testPrintOnFormat

	| expected stream |
	expected := '04*Jan*23'.
	stream := ReadWriteStream on: ''.
	january23rd2004 
		printOn: stream
		format: #(3 2 1 $* 2 2).
	self assert: stream contents equals: expected.