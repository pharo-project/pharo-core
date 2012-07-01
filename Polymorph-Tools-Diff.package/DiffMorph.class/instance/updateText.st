as yet unclassified
updateText
	"Reset the text if we have some."

	(self srcText notNil and: [self dstText notNil]) ifTrue: [
		self from: self srcText to: self dstText]