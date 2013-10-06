put: aText
	"Private - put the supplied text onto the file"

	| ff type |
	brevityState == #fullFile 
		ifTrue:[
			ff := reference  writeStream.
			Cursor write showWhile: [ff nextPutAll: aText asString; close].
			reference basename = ff localName 
				ifTrue: [contents := aText asString]
				ifFalse: [	 self updateList. "user renamed the file" ].
			^ true  "accepted"].

	listIndex = 0 
		ifTrue: [
			self inform: 'No fileName is selected' translated.
			^ false  "failed" ].
	type := 'These'.
	
	brevityState = #briefFile ifTrue: [type := 'Abbreviated'].
	brevityState = #briefHex ifTrue: [type := 'Abbreviated'].
	brevityState = #fullHex ifTrue: [type := 'Hexadecimal'].
	brevityState = #FileList ifTrue: [type := 'Directory'].
	
	self inform: ('{1} contents cannot
meaningfully be saved at present.' translated format:{type translated}).
	^ false  "failed"