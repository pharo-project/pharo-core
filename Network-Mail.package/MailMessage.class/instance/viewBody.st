printing/formatting
viewBody
	"open a viewer on the body of this message"
	self containsViewableImage
		ifTrue: [^ self viewImageInBody].
	(StringHolder new contents: self bodyTextFormatted;
		 yourself)
		openLabel: (self name
				ifNil: ['(a message part)'])