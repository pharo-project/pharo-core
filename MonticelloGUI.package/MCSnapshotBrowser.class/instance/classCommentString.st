text
classCommentString
	^ (items 
		detect: [:ea | ea isClassDefinition and: [ea className = classSelection]]
		ifNone: [^ '']) comment.