accessing
searchedTextList
	^SearchedTextList ifNil: [ SearchedTextList := OrderedCollection new]