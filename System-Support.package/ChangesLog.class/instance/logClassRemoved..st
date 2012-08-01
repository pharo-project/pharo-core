event-listening
logClassRemoved: annoucement
	annoucement removedClass acceptsLoggingOfCompilation ifTrue: [
		self logChange: 'Smalltalk globals removeClassNamed: #', annoucement removedClass name	
	].
