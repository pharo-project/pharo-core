edit: aText label: labelString accept: anAction
	"Open an editor on the given string/text"
	^self nonInteractiveWarning: (String streamContents: [ :s |
		s  nextPutAll: 'Editing Text: '.
		labelString ifNotNil: [ s nextPutAll: '[ '; nextPutAll: labelString; nextPutAll: ' ] '].
		s cr; nextPutAll: aText])