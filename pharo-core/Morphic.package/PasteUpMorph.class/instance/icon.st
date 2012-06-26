thumbnail
icon
	"Answer a form with an icon to represent the receiver"
	^ self isWorldMorph
		ifTrue: [self theme homeIcon]
		ifFalse: [self theme projectIcon]