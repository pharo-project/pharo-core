parseFileNamesFromStream: aNewLineDelimitedString
	^ aNewLineDelimitedString 
		ifNil: [ ^ OrderedCollection new ]
		ifNotNil: [ aNewLineDelimitedString subStrings: String crlf ]