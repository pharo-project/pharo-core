startUp: resuming
	
	resuming ifTrue: [
		self voidStdioFiles.
		[ TheStdioHandles := self stdioHandles ]
			on: Error
			do: [:ex|
				TheStdioHandles isArray ifFalse: [
					TheStdioHandles := Array new: 3 ] ] ]