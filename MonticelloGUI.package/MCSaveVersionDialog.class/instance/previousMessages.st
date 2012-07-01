log message history
previousMessages
	PreviousMessages ifNil: [ PreviousMessages := OrderedCollection new].
	^ PreviousMessages