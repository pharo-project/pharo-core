runTestsOfClass: aClass notifying: aBoolean
	| color |
	aClass resetHistory.
	aClass suite run updateResultsInHistory.
	
	aBoolean ifFalse: [ ^self ].
	color := Color gray.
	aClass hasPassedTest ifTrue: [ color :=  Color green ].
	aClass hasFailedTest ifTrue: [ color :=  Color yellow ].
	aClass hasErrorTest ifTrue: [ color :=  Color red ].
			
	self 
		notifyTitle: 'Test Finished' 
		contents: 'Class: ', aClass name
		color: color