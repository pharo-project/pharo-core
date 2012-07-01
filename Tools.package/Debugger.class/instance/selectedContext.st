private
selectedContext

	((contextStackIndex = 0) or: [contextStack isEmpty])
		ifTrue: [ ^ contextStackTop ].
	
	(contextStackIndex > contextStack size)
		ifTrue: [ ^ contextStack at: 0].
		
	^contextStack at: contextStackIndex