stream access
contentsFrom: startPosition to: endPosition 
	"Answer my contents from startPosition to endPosition."
	^ FileStream 
		detectFile: [ self readStream ]
		do: 
			[ : stream | 
			stream
				position: startPosition ;
				next: endPosition - startPosition + 1 ]