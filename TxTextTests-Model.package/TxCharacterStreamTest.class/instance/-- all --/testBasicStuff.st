testBasicStuff

	| text stream |
	
	text :=  'asdf' asTxModel.
	stream := text characterStream.


	self assert: stream next = $a.
	self assert: stream next = $s.
	self assert: stream next = $d.
	self assert: stream next = $f.
	self assert: stream next = nil.
	self assert: stream next = nil.

	self assert: stream isAtEnd.