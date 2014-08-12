closeSocketStream: socketStream
	[ socketStream close ] 
		on: Exception 
		do: [ ]