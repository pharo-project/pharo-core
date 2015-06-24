contextFor: anEditor
	(anEditor respondsTo: #sugsContext)
		ifTrue: [ ^ anEditor sugsContext ].
	(anEditor model respondsTo: #interactionModel)
		ifTrue: [ 
			(anEditor model interactionModel respondsTo: #sugsContext)
				ifTrue: [ ^ anEditor model interactionModel sugsContext ] ].
	self error: 'Not defined context for ' , anEditor asString