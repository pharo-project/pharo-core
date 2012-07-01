keys
classListKey: aChar from: view
	aChar == $b ifTrue: [^ self browseMethodFull].
	aChar == $N ifTrue: [^ self browseClassRefs].
	self packageListKey: aChar from: view