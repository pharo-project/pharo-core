squeak protocol
includesAnyOf: aCollection 
	"Answer whether any element of aCollection is included in the receiver"

	aCollection do: [ :elem | (self includes: elem) ifTrue: [^ true]].
	^false
