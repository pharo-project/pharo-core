runTestsOfClass: aClass notifying: aBoolean
	| methods blockToEvaluate |

	methods := aClass methods select: [ :method | method isTestMethod ] thenCollect: [:e | e selector ].

	blockToEvaluate := [ |result |
		[ aClass resetHistory.
		result := (aClass addToSuite: TestSuite new fromMethods: methods) run.
		result updateResultsInHistory.
		ClassesIconsCache removeKey: aClass ifAbsent: [].
		testSemaphore signal. ] on: Exception do:[:e | testSemaphore signal . e defaultAction]].

	aBoolean 
		ifTrue: [ blockToEvaluate forkAt: Processor userBackgroundPriority ]
		ifFalse: [ blockToEvaluate value ].

	testSemaphore
		initSignals;
		wait.
	
	aBoolean 
		ifTrue: [ 
			| color |
			color := Color gray.
			aClass hasPassedTest ifTrue: [ color :=  Color green ].
			aClass hasFailedTest ifTrue: [ color :=  Color yellow ].
			aClass hasErrorTest ifTrue: [ color :=  Color red ].
			
			self 
				notifyTitle: 'Test Finished' 
				contents: 'Class: ', aClass name
				color: color ]