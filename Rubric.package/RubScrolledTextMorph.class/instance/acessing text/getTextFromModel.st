getTextFromModel
	"Retrieve the current model text"

	| newText |
	self getTextSelector ifNil: [^Text new].
	newText := (self model perform: self getTextSelector withEnoughArguments: {self}) asText.
	newText ifNil: [^Text new].
	^newText copy