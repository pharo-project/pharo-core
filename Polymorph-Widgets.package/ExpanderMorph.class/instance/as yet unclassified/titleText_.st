titleText: aStringOrText
	"Set the text if the title morph is capable."

	(self titleMorph respondsTo: #titleText:)
		ifTrue: [self titleMorph titleText: aStringOrText]