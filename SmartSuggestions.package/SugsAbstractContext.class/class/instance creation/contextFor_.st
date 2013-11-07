contextFor: aModel
	(aModel respondsTo: #sugsContext)
		ifTrue: [ ^ aModel sugsContext ].
	(aModel model respondsTo: #sugsContext)
		ifTrue: [ ^ aModel model sugsContext ].
	self error: 'Not defined context for ' , aModel asString