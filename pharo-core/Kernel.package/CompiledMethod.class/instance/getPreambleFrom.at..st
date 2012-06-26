source code management
getPreambleFrom: aFileStream at: position
	|  writeStream |
	writeStream := String new writeStream.
	position to: 0 by: -1 do: [ :p | 
			| c | 
			aFileStream position: p.
			c := aFileStream basicNext.
			c == $!
				ifTrue: [^ writeStream contents reversed]
				ifFalse: [writeStream nextPut: c]]